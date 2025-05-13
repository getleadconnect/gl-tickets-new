<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Str;

use App\Models\Category;
use App\Models\Brand;
use App\Models\User;

use Hash;
use Carbon\Carbon;
use Validator;
use Session;
use DB;
use Log;
use Auth;
use DataTables;

class ProductSettingsController extends Controller
{
		
	public function index(Request $request)
	{
		$user_id=User::getVendorId();
		$login_user=User::where('id',$user_id)->first();
		$brand=Brand::orderBy('id','ASC')->get();
		return view('settings.brands_and_categories',compact('login_user','brand'));
	}


 public function saveBrand(Request $request)
 {
	 
		$br =New Brand();
		$br->Brand=$request->brand_name;
		$br->created_by=Auth::user()->id;
		$res=$br->save();
		if($res)
			{
				return response()->json(['msg'=>'Brand successfully added','status'=>true]);
			}
			else
			{
				return response()->json(['msg'=>'Something wrong, try again','status'=>false]);
			}
	 
	 
 }
 
 public function viewBrands()
{

      //$id=User::getVendorId();
	  	  
      $brnds = Brand::select('brands.*','users.name')->leftJoin('users','brands.created_by','=','users.id')
	  ->orderby('id','DESC')->get();
	
        return Datatables::of($brnds)
		->addIndexColumn()
				
        ->addColumn('action', function ($row)
        {
			$action='<button type="button" class="btn btn-outline-light btn-icon-circle btn-icon-circle-sm font-20 dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false"><i class="mdi mdi-dots-vertical"></i></button>
			<div class="dropdown-menu" style="">
				<a class="dropdown-item delete_brand" id="'.$row->id.'" href="javascript:;"><i class="fa fa-trash"></i> Delete</a>
			</div>';
			
			return $action;
        })
        ->rawColumns(['action'])
        ->make(true);
    }
 
 public function deleteBrand($id)
    {
        $br = Brand::where('id',$id)->first();
		$res=$br->delete();
		
		if($res)
			{
				return response()->json(['msg'=>'Brand successfully deleted','status'=>true]);
			}
			else
			{
				return response()->json(['msg'=>'Something wrong, try again','status'=>false]);
			}
	}

 //CATEGORY ------------------------------------------------
 
 public function saveCategory(Request $request)
 {
	 
		$cat =New Category();
		$cat->brand_id=$request->brand_id;
		$cat->category=$request->category;
		$cat->created_by=Auth::user()->id;
		$res=$cat->save();
		if($res)
			{
				return response()->json(['msg'=>'Category successfully added','status'=>true]);
			}
			else
			{
				return response()->json(['msg'=>'Something wrong, try again','status'=>false]);
			}
	 
	 
 }
 
 public function viewCategories()
{

      //$id=User::getVendorId();
	  	  
      $cats = Category::select('categories.*','users.name','brands.brand')
	  ->leftJoin('brands','categories.brand_id','=','brands.id')
	  ->leftJoin('users','categories.created_by','=','users.id')
	  ->orderby('id','DESC')->get();
	
        return Datatables::of($cats)
		->addIndexColumn()
				
        ->addColumn('action', function ($row)
        {
			$action='<button type="button" class="btn btn-outline-light btn-icon-circle btn-icon-circle-sm font-20 dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false"><i class="mdi mdi-dots-vertical"></i></button>
			<div class="dropdown-menu" style="">
				<a class="dropdown-item delete_cat" id="'.$row->id.'" href="javascript:;"><i class="fa fa-trash"></i> Delete</a>
			</div>';
			
			return $action;
        })
        ->rawColumns(['action'])
        ->make(true);
    }
  
 public function deleteCategory($id)
    {
        $cat = Category::where('id',$id)->first();
		$res=$cat->delete();
		
		if($res)
			{
				return response()->json(['msg'=>'Category successfully deleted','status'=>true]);
			}
			else
			{
				return response()->json(['msg'=>'Something wrong, try again','status'=>false]);
			}
	}

 
 
}
