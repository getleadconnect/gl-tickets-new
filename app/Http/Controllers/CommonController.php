<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Category;

use DB;
use Validator;

class CommonController extends Controller
{
	
	public function __construct()
	{
		// code here
	}
  
    public function getCategories($brand_id)
    {
		$cats=Category::where('brand_id',$brand_id)->get();
		$opt='<option value="" selected disabled>select</option>';
		foreach($cats as $r)
		{
			$opt.='<option value="'.$r->id.'">'.$r->category.'</option>';
		}
		return $opt;
    }
	
	
	
	
}

