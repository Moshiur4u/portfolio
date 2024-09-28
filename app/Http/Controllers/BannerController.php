<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Banner;
use Intervention\Image\Facades\Image;

class BannerController extends Controller{
    function banner(){
        $banners = Banner::all();
        return view('admin.Banner.banner',[
            'banners'=> $banners,
        ]);
    }
    function banner_store(Request $request){
        $request->validate([
            'title'=>'required',
            'description'=>'required',
            'image'=>'required',
        ]);
        $image = $request->image;
        $extension = $image->extension();
        $file_name = 'banner'.'-' . random_int(10000,99999).'.'.$extension;
        // echo $file_name;
        image::make($image)->save(public_path('uploads/banner/'. $file_name));
        Banner::insert([
            'title'=>$request->title,
            'description'=>$request->description,
            'image'=>$file_name,
        ]);
        return back()->with('banner', 'banner successfilly Added');
    }
        function banner_delete($banner_id){
        $banner = Banner::find($banner_id);
        $delete_from = public_path('uploads/banner/'.$banner->image);
        unlink( $delete_from);
        Banner::find( $banner_id)->delete();
        return back();
    }
}
