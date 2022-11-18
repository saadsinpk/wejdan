<?php
ini_set('display_errors', 1); ini_set('display_startup_errors', 1); error_reporting(E_ALL);
include('conn.php');
// example of how to use advanced selector features
include('simple_html_dom.php');
// https://www.trendyol.com/bardak-x-c1011

function get_html_product($url) {
    $base_url = 'https://www.trendyol.com';
    $html = file_get_html($url);
    $ret = array();

    $search_title = array('<h1 class="pr-new-br" data-drroot="h1">', '<span>', '</span>', '</h1>');
	$replace_title = array('', '', '', '');

	$return = array();
	$return['product_title'] = str_replace($search_title, $replace_title, $html->find('.pr-new-br',0)->outertext);

    $search_price = array('<span class="prc-dsc">', ' TL</span>', ',');
	$replace_price = array('', '', '.');
	$return['product_price'] = str_replace($search_price, $replace_price, $html->find('.product-price-container',0)->find('.prc-dsc',0)->outertext);

    $search_img = array('/mnresize/128/192');
	$replace_img = array('');

	$return['product_image'] = array();
    foreach($html->find('.product-slide-container .product-slide') as $e){
    	$return['product_image'][] = str_replace($search_img, $replace_img,$e->find('img', 0)->src);
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

function get_html_cat($url) {
    $base_url = 'https://www.trendyol.com';
    $html = file_get_html($url);
    $ret = array();

    // remove all comment elements
    $count = 0;
    $element= $html->find('a.breadcrumb-item');
	$total_element = count($element) - 1;
    $category = $html->find('a.breadcrumb-item', $total_element)->outertext;

    foreach($html->find('.p-card-wrppr') as $e){
        $ret[$count]['product_title'] = $e->find('.prdct-desc-cntnr-ttl-w',0)->outertext;
        $ret[$count]['product_URL'] = $base_url.$e->find('a',0)->href;
        $ret[$count]['category'] = $category;
    	$count++;
    }

    return $ret;
}

$sql = "SELECT * FROM ec_sid_categories_pagination LIMIT 5";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
	while($row = $result->fetch_assoc()) {
		$cat_prod_limit = $row['prod_left'];
	  	if($cat_prod_limit > 0) {
			$curt_page = $row["pagination"];
			$products = get_html_cat($row["cat_url"].'?pi='.$curt_page);
			$new_page = $curt_page + 1;

			foreach ($products as $product_key => $product_value) {

				$sql = "SELECT * FROM ec_sid_products WHERE product_url = '".$product_value['product_URL']."'";
				$result_cat_sql = $conn->query($sql);

				if ($result_cat_sql->num_rows > 0) {
				} else {
					$insert_product_sql = "INSERT INTO ec_sid_products (product_url, category_url, product_title, product_update, category_name)
					VALUES ('".mysqli_real_escape_string($conn, $product_value['product_URL'])."', '".$row["cat_url"]."', '".mysqli_real_escape_string($conn, $product_value['product_title'])."',0,'".mysqli_real_escape_string($conn, $product_value['category'])."')";
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
						$insert_categories_sql = "INSERT INTO ec_sid_categories_pagination (cat_url, prod_left, pagination)
						VALUES ('".$row["cat_url"]."', '".$product_limit_left."', '".$new_page."')";
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
	  	$cat_prod_limit = $row_cat_sql['cat_prod_limit'];

		$products = get_html_cat($row_cat_sql["cat_url"]);

		foreach ($products as $product_key => $product_value) {
			$sql = "SELECT * FROM ec_sid_products WHERE product_url = '".$product_value['product_URL']."'";
			$result_cat_sql = $conn->query($sql);

			if ($result_cat_sql->num_rows > 0) {
			} else {
				$insert_product_sql = "INSERT INTO ec_sid_products (product_url, category_url, product_title, category_name)
				VALUES ('".$product_value['product_URL']."', '".$row_cat_sql["cat_url"]."', '".mysqli_real_escape_string($conn, $product_value['product_title'])."','','".mysqli_real_escape_string($conn, $product_value['category'])."')";
				$conn->query($insert_product_sql);
			}
		}

		$sql_update = "UPDATE ec_sid_categories SET last_updated='1' WHERE id=".$row_cat_sql['id'];
		$conn->query($sql_update);

		if(count($products) > 0) {
		  	$product_limit_left = $cat_prod_limit - count($products);
		  	if($product_limit_left > 0) {
				$sql = "SELECT * FROM ec_sid_categories_pagination WHERE cat_url = '".$row_cat_sql["cat_url"]."' AND prod_left = '".$product_limit_left."' AND pagination = '2'";
				$result_cat_sql = $conn->query($sql);
				if ($result_cat_sql->num_rows > 0) {
				} else {
					$insert_categories_sql = "INSERT INTO ec_sid_categories_pagination (cat_url, prod_left, pagination)
					VALUES ('".$row_cat_sql["cat_url"]."', '".$product_limit_left."', 2)";
					$conn->query($insert_categories_sql);
				}
			}
		}
	}
}


$sql = "SELECT * FROM ec_sid_categories WHERE TIMESTAMPDIFF(HOUR, updated_at, NOW()) >= 24 ORDER BY updated_at DESC";
$result = $conn->query($sql);
if ($result->num_rows > 0) {
  while($row = $result->fetch_assoc()) {

	$sql_update = "UPDATE ec_sid_categories SET last_updated='0',updated_at=now() WHERE id=".$row['id'];
	$conn->query($sql_update);
  }
}


$sql = "SELECT * FROM ec_sid_products WHERE TIMESTAMPDIFF(HOUR, updated_at, NOW()) >= 24 ORDER BY updated_at DESC";
$result = $conn->query($sql);
if ($result->num_rows > 0) {
  while($row = $result->fetch_assoc()) {
	$sql_update = "UPDATE ec_sid_products SET product_update='0',updated_at=now() WHERE id=".$row['id'];
	$conn->query($sql_update);
  }
}

$sql = "SELECT * FROM ec_sid_products WHERE product_update = 0 LIMIT 25";
$result_prod_sql = $conn->query($sql);
if ($result_prod_sql->num_rows > 0) {
	while($row_prod_sql = $result_prod_sql->fetch_assoc()) {

		$product_url_array = explode("-",$row_prod_sql['product_url']);
		$total_url_array = count($product_url_array);
		if($total_url_array > 0) {
			$product_id = $product_url_array[$total_url_array - 1];

			// $url = "https://public.trendyol.com/discovery-web-productgw-service/api/productDetail/273849163?itemNumber=436423114&sav=false&storefrontId=1&culture=tr-TR&linearVariants=true&isLegalRequirementConfirmed=false";
			$url = "https://public.trendyol.com/discovery-web-productgw-service/api/productDetail/273849163";
			// $url = "https://public.trendyol.com/discovery-web-productgw-service/api/productDetail/".$product_id;

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
					$total_variant = count($resp->variants);
					if($total_variant > 1) {
						// echo "<pre>";
						// 	print_r($resp->variants);
						// echo "</pre>";
					}
				}
			}
		}

		
		$product = get_html_product($row_prod_sql['product_url']);
		// echo "<pre>";
		// print_r($product);
		// echo "</pre>";

		$sql_update = "UPDATE ec_sid_products SET product_title='".mysqli_real_escape_string($conn, $product['product_title'])."', product_price='".mysqli_real_escape_string($conn, $product['product_price'])."', product_images='".json_encode($product['product_image'])."' WHERE id=".$row_prod_sql['id'];
		$conn->query($sql_update);

		$srcmodelp="Botble''ACL''Models''User";
		$srcdatap= addslashes($srcmodelp);
		$srcmodelp=str_replace("'","",$srcdatap);
		$string="";
	    foreach ($product['product_image'] as $key => $value) {
	   		$link= $value;
	   		$destdir = '../storage/products/';
	   		$img=file_get_contents($link);
	   		file_put_contents($destdir.substr($link, strrpos($link,'/')), $img);
		    $srcimage=substr($link, strrpos($link,'/'));
		    $string.="products'".$srcimage.",";
		    $stringpart=addslashes($string);
		    $stringpart=str_replace("'","",$stringpart);
		    $stringpart=$stringpart.",";
	   	}
	   	$trimstring=rtrim($stringpart,",");
	   	$breakcomma=explode(",", $trimstring);
		    

		$product_upload = "INSERT INTO `ec_products` (`name`, `status`,`images`, `sku`, `quantity`, `allow_checkout_when_out_of_stock`, `with_storehouse_management`, `is_featured`, `brand_id`, `is_variation`, `sale_type`, `price`, `stock_status`, `created_by_type`) VALUES ('".mysqli_real_escape_string($conn, $product['product_title'])."','published','".json_encode($breakcomma)."', NULL, 100, '0', '1', '0', '0', '0', '0', '".mysqli_real_escape_string($conn, $product['product_price'])."', 'in_stock', '".$srcmodelp."')";
		mysqli_query($conn, $product_upload);
		$last_id = mysqli_insert_id($conn);

		$srcmodel="Botble''Ecommerce''Models''Product";

		$srcdata= addslashes($srcmodel);
		$srcmodel=str_replace("'","",$srcdata);

		$slug_upload = "INSERT INTO `slugs` (`key`, `reference_id`, `reference_type`, `prefix`) VALUES ('new_sid_p',".$last_id.", '".$srcmodel."', 'products')";
		mysqli_query($conn, $slug_upload);

		echo "<br>";
		exit();
	}
}

echo "Today is " . date("Y/m/d") . "<br>";
echo "The time is " . date("h:i:sa");

?>