<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Str;

use App\Models\Category;
use App\Models\Brand;
use App\Models\User;
use App\Models\Product;

use Hash;
use Carbon\Carbon;
use Validator;
use Session;
use DB;
use Log;
use Auth;
use DataTables;

class ProductController extends Controller
{	
	public function __construct()
	{
		// code here
	}
		
	public function index(Request $request)
	{
		$user_id=User::getVendorId();
		$login_user=User::where('id',$user_id)->first();
		$brand=Brand::orderBy('id','ASC')->get();
		return view('products.list_products');
	}

public function addProduct()
	{
		$brand=Brand::orderBy('id','ASC')->get();
		return view('products.add_new_product',compact('brand'));
	}


 public function saveProduct(Request $request)
 {
	 
	   $pro= new Product;
       $pro->name=$request->product_name;
       $pro->code=$request->sku_code;
       $pro->category_id=$request->category_id;
       $pro->brand_id=$request->brand_id;
       $pro->stock=$request->no_of_items;
       $pro->initial_stock=$request->no_of_items;
       $pro->status=($request->no_of_items!=0)?1:0;
       $pro->cost=$request->price;
       $pro->created_by= Auth::user()->id;
       $res=$pro->save();

		if($res)
		{
			return response()->json(['msg'=>'Product successfully added','status'=>true]);
		}
		else
		{
			return response()->json(['msg'=>'Something wrong, try again','status'=>false]);
		}

 }
 
 public function viewProducts()
{

      //$id=User::getVendorId();
	  	  
      $prods = Product::select('products.*','brands.brand','categories.category','users.name as user_name')
	  ->leftJoin('users','products.created_by','=','users.id')
	   ->leftJoin('brands','products.brand_id','=','brands.id')
	    ->leftJoin('categories','products.category_id','=','categories.id')
		->orderby('id','DESC')->get();
	
        return Datatables::of($prods)
		->addIndexColumn()
		->addColumn('status',function($row)
		{
			if($row->stock<=0)
				$st='<span class="badge rounded-pill bg-danger">No Stock</span>';
			else
				$st='<span class="badge rounded-pill bg-success">In Stock</span>';
				
			return $st;
		})
        ->addColumn('action', function ($row)
        {
			$action='<button type="button" class="btn btn-outline-light btn-icon-circle btn-icon-circle-sm font-20 dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false"><i class="mdi mdi-dots-vertical"></i></button>
			<div class="dropdown-menu" style="">
				<a class="dropdown-item edit_product" id="'.$row->id.'" href="javascript:;" data-bs-toggle="offcanvas" data-bs-target="#edit-product" ><i class="fa fa-edit"></i> Edit</a>
				<a class="dropdown-item delete_product" id="'.$row->id.'" href="javascript:;"><i class="fa fa-trash"></i> Delete</a>
			</div>';
			
			return $action;
        })
        ->rawColumns(['action','status'])
        ->make(true);
    }
 
 public function deleteProduct($id)
    {
        $pr = Product::where('id',$id)->first();
		$res=$pr->delete();
		
		if($res)
			{
				return response()->json(['msg'=>'Product successfully deleted','status'=>true]);
			}
			else
			{
				return response()->json(['msg'=>'Something wrong, try again','status'=>false]);
			}
	}


public function edit($id)
	{
		$pro=Product::where('id',$id)->first();
		$brand=Brand::orderBy('id','ASC')->get();
		$cats=Category::where('brand_id',$pro->brand_id)->orderBy('id','ASC')->get();
		return view('products.edit_product',compact('pro','brand','cats'));
	}


public function updateProduct(Request $request)
 {
	 
	   $pro_id=$request->product_id;
	 
		$pro=Product::where('id',$pro_id)->first();	 
		$pro->name=$request->product_name;
		$pro->code=$request->sku_code;
		$pro->category_id=$request->category_id;
		$pro->brand_id=$request->brand_id;
		$pro->stock=$request->no_of_items;
		
		if($pro->initial_stock==0){
			$pro->initial_stock=$request->no_of_items;
		}
		
		$pro->status=($request->no_of_items!=0)?1:0;
		$pro->cost=$request->price;
		$pro->created_by= Auth::user()->id;
		$res=$pro->save();
		
		if($res)
		{
			return response()->json(['msg'=>'Product successfully updated','status'=>true]);
		}
		else
		{
			return response()->json(['msg'=>'Something wrong, try again','status'=>false]);
		}

 }

 
}
