<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use App\Models\TrendyolProducts;
use Illuminate\Http\Request;
use Datatables;
use Validator;
class trendyolProductsController extends Controller
{
     //*** JSON Request
     public function datatables()
    {
        $datas = TrendyolProducts::orderBy('id','desc');          
         //--- Integrating This Collection Into Datatables
         return Datatables::of($datas)
                            ->addColumn('status', function(TrendyolProducts $data) {
                                $class = $data->status == 1 ? 'drop-success' : 'drop-danger';
                                $s = $data->status == 1 ? 'selected' : '';
                                $ns = $data->status == 0 ? 'selected' : '';
                                return '<div class="action-list"><select class="process select droplinks '.$class.'"><option data-val="1" value="'. route('admin-trendyolProducts-status',['id1' => $data->id, 'id2' => 1]).'" '.$s.'>'.__("Activated").'</option><<option data-val="0" value="'. route('admin-trendyolProducts-status',['id1' => $data->id, 'id2' => 0]).'" '.$ns.'>'.__("Deactivated").'</option>/select></div>';
                            }) 
                            ->addColumn('action', function(TrendyolProducts $data) {
                                return '<div class="action-list"><a href="' . route('trendyolProducts.edit',$data->id) . '"> <i class="fas fa-edit"></i>'.__('Edit').'</a><a href="javascript:;" data-href="' . route('admin-trendyolProducts-delete',$data->id) . '" data-toggle="modal" data-target="#confirm_product-delete" class="delete"><i class="fas fa-trash-alt"></i></a></div>';
                            })
                            ->rawColumns(['status','action'])
                            ->toJson(); //--- Returning Json Data To Client Side
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('admin.trendyolProducts.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.trendyolProducts.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

        //--- Logic Section
        $data = new TrendyolProducts();
        $input = $request->all();
    
        $data->fill($input)->save();
        //--- Logic Section Ends

        //--- Redirect Section        
        $msg = __('New Data Added Successfully.').'<a href="'.route("trendyolProducts.index").'">'.__("View Product Url Lists").'</a>';
        return response()->json($msg);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\TrendyolProducts  $trendyolProducts
     * @return \Illuminate\Http\Response
     */
    public function show(TrendyolProducts $trendyolProducts)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\TrendyolProducts  $trendyolProducts
     * @return \Illuminate\Http\Response
     */
    public function edit(TrendyolProducts $trendyolProducts,$id)
    {
        $data = TrendyolProducts::findOrFail($id);
        return view('admin.trendyolProducts.edit',compact('data'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\TrendyolProducts  $trendyolProducts
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request,$id)
    {
        $data = TrendyolProducts::findOrFail($id);
        $input = $request->all();
        $data->update($input);
        //--- Logic Section Ends

        //--- Redirect Section     
        $msg = __('Data Updated Successfully.').'<a href="'.route("trendyolProducts.index").'">'.__("View Product Url Lists").'</a>';
        return response()->json($msg);    
    }

    //*** GET Request Status
      public function status($id1,$id2)
        {
            $data = TrendyolProducts::findOrFail($id1);
            $data->status = $id2;
            $data->update();
            //--- Redirect Section
            $msg = __('Status Updated Successfully.');
            return response()->json($msg);
            //--- Redirect Section Ends
        }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\TrendyolProducts  $trendyolProducts
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $data = TrendyolProducts::findOrFail($id);
        $data->delete();
        //--- Redirect Section     
        $msg = __('Data Deleted Successfully.');
        return response()->json($msg);      
        //--- Redirect Section Ends   
    }
}
