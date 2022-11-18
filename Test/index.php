<?php
ini_set('display_errors', 1); ini_set('display_startup_errors', 1); error_reporting(E_ALL);
include('conn.php');
// example of how to use advanced selector features
include('simple_html_dom.php');
// https://www.trendyol.com/bardak-x-c1011

// $url = "https://public.trendyol.com/discovery-web-productgw-service/api/productDetail/287406195";
// $curl = curl_init($url);
// curl_setopt($curl, CURLOPT_URL, $url);
// curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);

// //for debug only!
// curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, false);
// curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, false);

// $resp = curl_exec($curl);
// curl_close($curl);


function createSlug($str,$length,$delimiter = '-'){
    $slug = strtolower(trim(preg_replace('/[\s-]+/', $delimiter, preg_replace('/[^A-Za-z0-9-]+/', $delimiter, preg_replace('/[&]/', 'and', preg_replace('/[\']/', '', iconv('UTF-8', 'ASCII//TRANSLIT', $str))))), $delimiter));
    $slug = substr($slug, 0, $length);
    return $slug;
} 

// exit();
function get_html_product($url) {
    $base_url = 'https://www.trendyol.com';
    $html = file_get_html($url);
    $ret = array();

    $search_title = array('<h1 class="pr-new-br" data-drroot="h1">', '<span>', '</span>', '</h1>');
	$replace_title = array('', '', '', '');

	$return = array();
	$return['product_title'] = str_replace($search_title, $replace_title, $html->find('.pr-new-br',0)->outertext);
	$return['description'] = $html->find('.detail-attr-container',0)->outertext;

    $search_price = array('<span class="prc-dsc">', ' TL</span>', ',');
	$replace_price = array('', '', '.');
	$return['product_price'] = str_replace($search_price, $replace_price, $html->find('.product-price-container',0)->find('.prc-dsc',0)->outertext);

    $search_img = array('/mnresize/128/192');
	$replace_img = array('');

	$return['product_image'] = array();
    foreach($html->find('.product-slide-container .product-slide') as $e){
    	$return['product_image'][] = str_replace($search_img, $replace_img,$e->find('img', 0)->src);
    }
    if(count($return['product_image']) == 0) {
    	$return['product_image'][] = $html->find('.gallery-modal-content',0)->find("img", 0)->src;
    }

    // echo $html->find('.pr-new-br',0)->outertext;
    // exit();
    // // remove all comment elements
    // $count = 0;
    // foreach($html->find('.p-card-wrppr') as $e){
    //     $ret[$count]['product_title'] = $e->find('.prdct-desc-cntnr-ttl-w',0)->outertext;
    //     $ret[$count]['product_URL'] = $base_url.$e->find('a',0)->href;
    // 	$count++;
    // }

    return $return;
}

function create_attribute($attribut_name) {
	global $conn;
	$sql = "SELECT * FROM ec_product_attribute_sets WHERE title = '".$attribut_name."'";
	$result = $conn->query($sql);
	if($result->num_rows > 0) {
		while($row = $result->fetch_assoc()) {	
			return $row['id'];
		}
	} else {
		$insert_product_sql = "INSERT INTO ec_product_attribute_sets (`title`, `slug`, `display_layout`, `is_searchable`, `is_comparable`, `is_use_in_product_listing`, `status`, `order`, `created_at`, `updated_at`)
		VALUES ('".$attribut_name."','".createSlug($attribut_name,50)."','text',1,1,1,'published',0, '".date('Y-m-d H:i:s')."','".date('Y-m-d H:i:s')."')";
		$conn->query($insert_product_sql);
		$last_id = $conn->insert_id;
		return $last_id;
	}
}

function create_variation($attribute_id, $variant_value, $order_number, $default) {
	global $conn;
	$order_number = $order_number + 1;

	$sql = "SELECT * FROM ec_product_attributes WHERE attribute_set_id = '".$attribute_id."' AND title = '".$variant_value."'";
	$result = $conn->query($sql);
	if($result->num_rows > 0) {
		while($row = $result->fetch_assoc()) {
			return $row['id'];
			// echo $row['id'];
		}
	} else {
		$insert_product_sql = "INSERT INTO ec_product_attributes (`attribute_set_id`, `title`, `slug`, `is_default`, `order`, `status`, `created_at`, `updated_at`)
		VALUES ('".$attribute_id."','".$variant_value."','".createSlug($variant_value,50)."','".$default."','".$order_number."','published','".date('Y-m-d H:i:s')."','".date('Y-m-d H:i:s')."')";
		$conn->query($insert_product_sql);
		$last_id = $conn->insert_id;
		return $last_id;
	}

}

function get_html_cat($url) {
    $base_url = 'https://www.trendyol.com';
    $html = file_get_html($url);
    $ret = array();

    // remove all comment elements
    $count = 0;
    $element= $html->find('a.breadcrumb-item');
	$total_element = count($element) - 1;

    foreach($html->find('.p-card-wrppr') as $e){
        $ret[$count]['product_title'] = $e->find('.prdct-desc-cntnr-ttl-w',0)->outertext;
        $ret[$count]['product_URL'] = $base_url.$e->find('a',0)->href;
    	$count++;
    }

    return $ret;
}

function variants_set_func($product_url, $last_insert_product_id, $product_title, $images, $product_price, $srcmodelp) {
	global $conn;
	$product_url_array = explode("-",$product_url);
	$total_url_array = count($product_url_array);
	if($total_url_array > 0) {
		$product_id = $product_url_array[$total_url_array - 1];

		$url = "https://public.trendyol.com/discovery-web-productgw-service/api/productDetail/".$product_id;
		$curl = curl_init($url);
		curl_setopt($curl, CURLOPT_URL, $url);
		curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);

		//for debug only!
		curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, false);
		curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, false);

		$resp = curl_exec($curl);
		curl_close($curl);
		if(!empty($resp)) {
			$resp = json_decode($resp);

			if($resp->statusCode == 200) {
				$resp = $resp->result;

				// $total_alternativeVariants = count($resp->alternativeVariants);
				// if($total_alternativeVariants > 1) {
				// 	$alternativeVariants = $resp->alternativeVariants;
				// 	foreach ($alternativeVariants as $alternativeVariant_key => $alternativeVariant_value) {
				// 		echo "<pre>";
				// 		print_r($alternativeVariant_value);
				// 		echo "</pre>";

				// 		if(!empty($alternativeVariant_value->attributeName)) {
				// 			$attribut_id = create_attribute($alternativeVariant_value->attributeName);
				// 			$variation_id = create_variation($attribut_id, $alternativeVariant_value->attributeValue, $alternativeVariant_key);
				// 		}
				// 	}
				// }

				$total_variant = count($resp->variants);
				if($total_variant > 1) {
					$variants = $resp->variants;
					foreach ($variants as $variant_key => $variant_value) {
						if(!empty($variant_value->attributeName)) {
							$default = 0;
							if($variant_key == 1) {
								$default = 1;
							}

							$attribut_id = create_attribute($variant_value->attributeName);
							$variation_id = create_variation($attribut_id, $variant_value->attributeValue, $variant_key, $default);

							$check_if_variation_exists = "SELECT * FROM ec_sid_variation WHERE variation_id = '".$variation_id."' AND main_product = '".$last_insert_product_id."' LIMIT 1";
							$result_check_if_variation_exists = $conn->query($check_if_variation_exists);

							if ($result_check_if_variation_exists->num_rows > 0) {
								while($row_check_if_variation_exists = $result_check_if_variation_exists->fetch_assoc()) {
									$product_upload = "UPDATE ec_products SET name='".$product_title."', images='".$images."', quantity='100', price='".$product_price."' WHERE id=".$row_check_if_variation_exists['product_id'];
									mysqli_query($conn, $product_upload);
								}
							} else {
								$product_upload = "INSERT INTO `ec_products` (`name`, `status`,`images`, `sku`, `quantity`, `allow_checkout_when_out_of_stock`, `with_storehouse_management`, `is_featured`, `brand_id`, `is_variation`, `sale_type`, `price`, `stock_status`, `created_by_type`) VALUES ('".$product_title."','published','".$images."', NULL, 100, '0', '1', '0', '0', '1', '0', '".$product_price."', 'in_stock', '".$srcmodelp."')";
								mysqli_query($conn, $product_upload);
								$last_variation_product_id = mysqli_insert_id($conn);

								$ec_sid_variation = "INSERT INTO `ec_sid_variation` (`product_id`, `variation_id`, `main_product`) VALUES ('".$last_variation_product_id."','".$variation_id."', '".$last_insert_product_id."')";
								mysqli_query($conn, $ec_sid_variation);
								add_varaition_attribute_to_product($variation_id, $attribut_id, $last_insert_product_id, $last_variation_product_id, $default);
							}


						}
					}
					remove_attribute_varaition_to_product($variation_id, $attribut_id, $last_insert_product_id);
					add_attribute_varaition_to_product($variation_id, $attribut_id, $last_insert_product_id);
				}
			}
		}
	}

}

function add_varaition_attribute_to_product($variation_id, $attribut_id, $last_insert_product_id, $last_variation_product_id, $is_default) {
	global $conn;

	$add_product_variations = "INSERT INTO `ec_product_variations` (`product_id`, `configurable_product_id`, `is_default`)
	VALUES ('".$last_variation_product_id."', '".$last_insert_product_id."', '".$is_default."')";
	$conn->query($add_product_variations);
	$last_product_variation_id = mysqli_insert_id($conn);
	$add_product_variation_items = "INSERT INTO `ec_product_variation_items` (`attribute_id`, `variation_id`)
	VALUES ('".$variation_id."', '".$last_product_variation_id."')";
	$conn->query($add_product_variation_items);
}


function remove_attribute_varaition_to_product($variation_id, $attribut_id, $last_insert_product_id) {
	global $conn;
	$add_product_with_attribut = "DELETE FROM `ec_product_with_attribute` WHERE product_id = '".$last_insert_product_id."'";
	$conn->query($add_product_with_attribut);

	$add_product_with_attribut_set = "DELETE FROM `ec_product_with_attribute_set` WHERE product_id = '".$last_insert_product_id."'";
	$conn->query($add_product_with_attribut_set);

}

function add_attribute_varaition_to_product($variation_id, $attribut_id, $last_insert_product_id) {
	global $conn;
	$add_product_with_attribut = "INSERT INTO `ec_product_with_attribute` (`attribute_id`, `product_id`)
	VALUES ('".$variation_id."', '".$last_insert_product_id."')";
	$conn->query($add_product_with_attribut);

	$add_product_with_attribut_set = "INSERT INTO `ec_product_with_attribute_set` (`attribute_set_id`, `product_id`, `order`)
	VALUES ('".$attribut_id."', '".$last_insert_product_id."', 0)";
	$conn->query($add_product_with_attribut_set);

}

function category_create($category_id, $product) {
	global $conn;

	$remove_product_to_category = "DELETE FROM ec_product_category_product WHERE product_id=".$product;
	$conn->query($remove_product_to_category);

	$insert_product_to_category = "INSERT INTO ec_product_category_product (category_id, product_id)
	VALUES ('".$category_id."', '".$product."')";
	$conn->query($insert_product_to_category);
}

$sql = "SELECT * FROM ec_sid_categories_pagination LIMIT 5";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
	while($row = $result->fetch_assoc()) {
		$cat_prod_limit = $row['prod_left'];
		$prod_left_main = $row['prod_left_main'];
		$total_prod_from_same_cat = 0;
		$total_product_sql = "SELECT COUNT(*) as total_product FROM ec_sid_products WHERE category_url = '".$row['cat_url']."' ";
		$result_total_product_sql = $conn->query($total_product_sql);

		if ($result_total_product_sql->num_rows > 0) {
			while($row_total_product_sql = $result_total_product_sql->fetch_assoc()) {
				$total_prod_from_same_cat = $row_total_product_sql['total_product'];
			}
		}

	  	if($cat_prod_limit > 0 AND $prod_left_main > $total_prod_from_same_cat) {
			$curt_page = $row["pagination"];
			if (strpos($row["cat_url"], '?') !== false) {
				$temp_url = $row["cat_url"].'&pi='.$curt_page;
			} else {
				$temp_url = $row["cat_url"].'?pi='.$curt_page;
			}
			$products = get_html_cat($temp_url);
			$new_page = $curt_page + 1;

			foreach ($products as $product_key => $product_value) {

				$sql = "SELECT * FROM ec_sid_products WHERE product_url = '".$product_value['product_URL']."'";
				$result_cat_sql = $conn->query($sql);

				if ($result_cat_sql->num_rows > 0) {
				} else {
					$insert_product_sql = "INSERT INTO ec_sid_products (product_url, category_url, product_title, product_update, category_name)
					VALUES ('".mysqli_real_escape_string($conn, $product_value['product_URL'])."', '".$temp_url."', '".mysqli_real_escape_string($conn, $product_value['product_title'])."',0,'".$row['parent_id']."')";
					$conn->query($insert_product_sql);
				}

			}

			if(count($products) > 0) {
			  	$product_limit_left = $cat_prod_limit - count($products);
			  	if($product_limit_left > 0) {

					$sql = "SELECT * FROM ec_sid_categories_pagination WHERE cat_url = '".$row["cat_url"]."' AND prod_left = '".$product_limit_left."' AND pagination = '".$new_page."'";
					$result_cat_sql = $conn->query($sql);
					if ($result_cat_sql->num_rows > 0) {
					} else {
						$insert_categories_sql = "INSERT INTO ec_sid_categories_pagination (cat_url, prod_left, pagination, prod_left_main, parent_id)
						VALUES ('".$row["cat_url"]."', '".$product_limit_left."', '".$new_page."', '".$prod_left_main."','".$row['parent_id']."')";
						$conn->query($insert_categories_sql);
					}
				}
			}

			$sql_update = "DELETE FROM ec_sid_categories_pagination WHERE id=".$row['id'];
			$conn->query($sql_update);

		}
	}
}

$sql = "SELECT * FROM ec_sid_categories WHERE last_updated = 0 LIMIT 5";
$result_cat_sql = $conn->query($sql);

if ($result_cat_sql->num_rows > 0) {
	while($row_cat_sql = $result_cat_sql->fetch_assoc()) {
		$products = array();

		$total_product_sql = "SELECT COUNT(*) as total_product FROM ec_sid_products WHERE category_url = '".$row_cat_sql['cat_url']."' ";
		$result_total_product_sql = $conn->query($total_product_sql);

		if ($result_total_product_sql->num_rows > 0) {
			while($row_total_product_sql = $result_total_product_sql->fetch_assoc()) {
				$total_prod_from_same_cat = $row_total_product_sql['total_product'];
			}
		}

	  	$cat_prod_limit = $row_cat_sql['cat_prod_limit'];
	  	if($cat_prod_limit > 0 AND $cat_prod_limit > $total_prod_from_same_cat) {

			$products = get_html_cat($row_cat_sql["cat_url"]);

			foreach ($products as $product_key => $product_value) {
				$sql = "SELECT * FROM ec_sid_products WHERE product_url = '".$product_value['product_URL']."'";
				$result_cat_sql = $conn->query($sql);

				if ($result_cat_sql->num_rows > 0) {
				} else {
					$insert_product_sql = "INSERT INTO ec_sid_products (product_url, category_url, product_title, product_update, category_name)
					VALUES ('".$product_value['product_URL']."', '".$row_cat_sql["cat_url"]."', '".mysqli_real_escape_string($conn, $product_value['product_title'])."','0','".$row_cat_sql['parent_id']."')";
					$conn->query($insert_product_sql);
				}
			}
			if(count($products) > 0) {
			  	$product_limit_left = $cat_prod_limit - count($products);
			  	if($product_limit_left > 0) {
					$sql = "SELECT * FROM ec_sid_categories_pagination WHERE cat_url = '".$row_cat_sql["cat_url"]."' AND prod_left = '".$product_limit_left."' AND pagination = '2'";
					$result_cat_sql = $conn->query($sql);
					if ($result_cat_sql->num_rows > 0) {
					} else {
						$insert_categories_sql = "INSERT INTO ec_sid_categories_pagination (cat_url, prod_left, pagination, prod_left_main, parent_id)
						VALUES ('".$row_cat_sql["cat_url"]."', '".$product_limit_left."', 2, '".$product_limit_left."','".$row_cat_sql['parent_id']."')";
						$conn->query($insert_categories_sql);
					}
				}
			}
		}

		$sql_update = "UPDATE ec_sid_categories SET last_updated='1' WHERE id=".$row_cat_sql['id'];
		$conn->query($sql_update);

	}
}


$sql = "SELECT * FROM ec_sid_categories WHERE TIMESTAMPDIFF(HOUR, updated_at, NOW()) >= 24 AND last_updated != 0 ORDER BY updated_at DESC";
$result = $conn->query($sql);
if ($result->num_rows > 0) {
  while($row = $result->fetch_assoc()) {

	$sql_update = "UPDATE ec_sid_categories SET last_updated='0',updated_at=now() WHERE id=".$row['id'];
	$conn->query($sql_update);
  }
}


$sql = "SELECT * FROM ec_sid_products WHERE TIMESTAMPDIFF(HOUR, updated_at, NOW()) >= 24 AND product_update != 0 ORDER BY updated_at DESC";
$result = $conn->query($sql);
if ($result->num_rows > 0) {
  while($row = $result->fetch_assoc()) {
	$sql_update = "UPDATE ec_sid_products SET product_update='0',updated_at=now() WHERE id=".$row['id'];
	$conn->query($sql_update);
  }
}

$sql = "SELECT * FROM ec_sid_products WHERE product_update = 0 LIMIT 20";
$result_prod_sql = $conn->query($sql);
if ($result_prod_sql->num_rows > 0) {
	while($row_prod_sql = $result_prod_sql->fetch_assoc()) {
		$check_if_product_exists = "SELECT * FROM ec_products WHERE id = '".$row_prod_sql['main_product_id']."' LIMIT 1";
		$result_check_if_product_exists = $conn->query($check_if_product_exists);
		if ($result_check_if_product_exists->num_rows > 0) {
			while($row_check_if_product_exists = $result_check_if_product_exists->fetch_assoc()) {

				$product_url_array_backslash = explode("/",$row_prod_sql['product_url']);
				$total_product_url_array_backslash = count($product_url_array_backslash);
				$product_slug = $product_url_array_backslash[$total_product_url_array_backslash - 1];

				$product = get_html_product($row_prod_sql['product_url']);

				$search_title = array('<h1 class="pr-new-br" data-drroot="h1">', '<span>', '</span>', '</h1>');
				$replace_title = array('', '', '', '');

				$product_title = preg_replace('#<[^>]+>#', ' ', mysqli_real_escape_string($conn, $product['product_title']));
				$product_category = preg_replace('#<[^>]+>#', ' ', mysqli_real_escape_string($conn, $product['product_title']));


				$sql_update = "UPDATE ec_sid_products SET product_title='".$product_title."', product_price='".mysqli_real_escape_string($conn, $product['product_price'])."', product_images='".json_encode($product['product_image'])."' WHERE id=".$row_prod_sql['id'];
				$conn->query($sql_update);

				$srcmodelp="Botble''ACL''Models''User";
				$srcdatap= addslashes($srcmodelp);
				$srcmodelp=str_replace("'","",$srcdatap);
				$string="";
				if(!empty($row_check_if_product_exists['images'])) {
			   		$destdir = '../storage/';
					$old_images_array = json_decode($row_check_if_product_exists['images']);
					foreach ($old_images_array as $old_images_array_key => $old_images_array_value) {
						unlink($destdir.$old_images_array_value);
					}
				}
			    foreach ($product['product_image'] as $key => $value) {
			   		$link= $value;
			   		$destdir = '../storage/products/';
			   		$link_dot_array = explode('.',$link);
					$extension = end($link_dot_array);

			   		$img=file_get_contents($link);
			   		$img_name = '/'.$key.'_'.time().'_'.rand(10,100);
			   		$img_name = $img_name.'.'.$extension;
			   		$img_name_150 = $img_name.'-150x150.'.$extension;
			   		$img_name_300 = $img_name.'-300x300.'.$extension;
			   		$img_name = $img_name.'.'.$extension;
			   		file_put_contents($destdir.$img_name, $img);
			   		file_put_contents($destdir.$img_name_150, $img);
			   		file_put_contents($destdir.$img_name_300, $img);
				    $srcimage= $img_name;
				    $string .="products'".$srcimage.",";
				    $stringpart=addslashes($string);
				    $stringpart=str_replace("'","",$stringpart);
				    $stringpart=$stringpart.",";
			   	}
			   	$trimstring=rtrim($stringpart,",");
			   	$breakcomma=explode(",", $trimstring);
				    
				$product_upload = "UPDATE ec_products SET name='".$product_title."', images='".json_encode($breakcomma)."', quantity='100', price='".mysqli_real_escape_string($conn, $product['product_price'])."',description='".$product['description']."' WHERE id=".$row_prod_sql['main_product_id'];
				mysqli_query($conn, $product_upload);

				variants_set_func($row_prod_sql['product_url'], $row_prod_sql['main_product_id'], $product_title, json_encode($breakcomma), mysqli_real_escape_string($conn, $product['product_price']), $srcmodelp);

				category_create($row_prod_sql['category_name'], $row_prod_sql['main_product_id']);

				$srcmodel="Botble''Ecommerce''Models''Product";

				$srcdata= addslashes($srcmodel);
				$srcmodel=str_replace("'","",$srcdata);

				$slug_upload = "UPDATE slugs SET key='".$product_slug."' WHERE reference_id=".$row_prod_sql['main_product_id'];
				mysqli_query($conn, $slug_upload);
				// exit();
				
				$update_product = "UPDATE ec_sid_products SET product_update='1', updated_at=now(), main_product_id='".$row_prod_sql['main_product_id']."' WHERE id=".$row_prod_sql['id'];
				mysqli_query($conn, $update_product);

			}
		} else {
			$product_url_array_backslash = explode("/",$row_prod_sql['product_url']);
			$total_product_url_array_backslash = count($product_url_array_backslash);
			$product_slug = $product_url_array_backslash[$total_product_url_array_backslash - 1];

			$product = get_html_product($row_prod_sql['product_url']);

			$search_title = array('<h1 class="pr-new-br" data-drroot="h1">', '<span>', '</span>', '</h1>');
			$replace_title = array('', '', '', '');

			$product_title = preg_replace('#<[^>]+>#', ' ', mysqli_real_escape_string($conn, $product['product_title']));
			$product_category = preg_replace('#<[^>]+>#', ' ', mysqli_real_escape_string($conn, $product['product_title']));


			$sql_update = "UPDATE ec_sid_products SET product_title='".$product_title."', product_price='".mysqli_real_escape_string($conn, $product['product_price'])."', product_images='".json_encode($product['product_image'])."' WHERE id=".$row_prod_sql['id'];
			$conn->query($sql_update);

			$srcmodelp="Botble''ACL''Models''User";
			$srcdatap= addslashes($srcmodelp);
			$srcmodelp=str_replace("'","",$srcdatap);
			$string="";
		    foreach ($product['product_image'] as $key => $value) {
		   		$link= $value;
		   		$destdir = '../storage/products/';
		   		$link_dot_array = explode('.',$link);
				$extension = end($link_dot_array);

		   		$img=file_get_contents($link);
		   		$img_name = '/'.$key.'_'.time().'_'.rand(10,100);
		   		$img_name = $img_name.'.'.$extension;
		   		$img_name_150 = $img_name.'-150x150.'.$extension;
		   		$img_name_300 = $img_name.'-300x300.'.$extension;
		   		$img_name = $img_name.'.'.$extension;
		   		file_put_contents($destdir.$img_name, $img);
		   		file_put_contents($destdir.$img_name_150, $img);
		   		file_put_contents($destdir.$img_name_300, $img);
			    $srcimage= $img_name;
			    $string .="products'".$srcimage.",";
			    $stringpart=addslashes($string);
			    $stringpart=str_replace("'","",$stringpart);
			    $stringpart=$stringpart.",";
		   	}
		   	$trimstring=rtrim($stringpart,",");
		   	$breakcomma=explode(",", $trimstring);
			    
			$product_upload = "INSERT INTO `ec_products` (`name`, `status`,`images`, `sku`, `quantity`, `allow_checkout_when_out_of_stock`, `with_storehouse_management`, `is_featured`, `brand_id`, `is_variation`, `sale_type`, `price`, `stock_status`, `created_by_type`, `description`) VALUES ('".$product_title."','published','".json_encode($breakcomma)."', NULL, 100, '0', '1', '0', '0', '0', '0', '".mysqli_real_escape_string($conn, $product['product_price'])."', 'in_stock', '".$srcmodelp."','".$product['description']."')";
			mysqli_query($conn, $product_upload);
			$last_id = mysqli_insert_id($conn);

			variants_set_func($row_prod_sql['product_url'], $last_id, $product_title, json_encode($breakcomma), mysqli_real_escape_string($conn, $product['product_price']), $srcmodelp);

			category_create($row_prod_sql['category_name'], $last_id);

			$srcmodel="Botble''Ecommerce''Models''Product";

			$srcdata= addslashes($srcmodel);
			$srcmodel=str_replace("'","",$srcdata);

			$slug_upload = "INSERT INTO `slugs` (`key`, `reference_id`, `reference_type`, `prefix`) VALUES ('".$product_slug."',".$last_id.", '".$srcmodel."', 'products')";
			mysqli_query($conn, $slug_upload);
			// exit();
			
			$update_product = "UPDATE ec_sid_products SET product_update='1', updated_at=now(), main_product_id='".$last_id."' WHERE id=".$row_prod_sql['id'];
			mysqli_query($conn, $update_product);
		}
		// exit();
	}
}
?>