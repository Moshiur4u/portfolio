<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Banner;
use App\Models\service;

class FrontendController extends Controller
{
    function welcome(){
        $services = service::where('status',1)->get();
        $banners = Banner::all();
        return view('frontend.index',[
        'banners'=>$banners,
        'services'=>$services,
        ]);
    }
}
