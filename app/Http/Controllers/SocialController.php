<?php

namespace App\Http\Controllers;

use App\Models\Social;
use Carbon\Carbon;
use Illuminate\Http\Request;

class SocialController extends Controller
{
    function add_socail(){
        $socials = Social::all();
        return view('admin.social.social',[
            'socials' => $socials,
        ]);
    }

    function Social_store(Request $request){
        Social::insert([
            'icon'=> $request->icon,
            'link'=> $request->link,
            'created_at'=>Carbon::now(),
        ]);
        return back();
    }
    function status_change($social_id){
        $icon = Social::find($social_id);
        if ($icon->status ==1) {
            Social::find($social_id)->update([
                'status'=>0,
            ]);
            return back();
        }else{
            Social::find($social_id)->update([
                'status'=>1,
            ]);
            return back();
        }
    }
}
