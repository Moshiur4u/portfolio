<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\logo;
use Intervention\Image\Facades\Image;

class LogoController extends Controller
{
    function logo_change(){
        $header_logo = logo::where('location',1)->get();
        $footer_logo = logo::where('location',2)->get();
        return view('admin.logo.logo',[
            'header_logo' => $header_logo,
            'footer_logo' => $footer_logo,

        ]);
    }
    function logo_update(Request $request){
        $request->validate([
            'location'=>'required',
            'logo'=>'required',
        ]);
        if ($request-> location ==1) {
            $prev_logo = logo::where('location', $request->location)->get();
        $delete_form = public_path('uploads/logo/'. $prev_logo->first()->logo);
        unlink($delete_form);
        $logo = $request->logo;
        $extension = $logo->extension();
        $filename = 'header_logo'.'.'.$extension;
        image ::make($logo)->save(public_path('uploads/logo/'.$filename));
        logo::find($prev_logo->first()->id)->update([
            'logo' => $filename,
        ]);
        return back();

        }
        else{

            $prev_logo = logo::where('location', $request->location)->get();
        $delete_form = public_path('uploads/logo/'. $prev_logo->first()->logo);
        unlink($delete_form);
        $logo = $request->logo;
        $extension = $logo->extension();
        $filename = 'footer_logo'.'.'.$extension;
        image ::make($logo)->save(public_path('uploads/logo/'.$filename));
        logo::find($prev_logo->first()->id)->update([
            'logo' => $filename,
        ]);
        return back();

        }

    }
}
