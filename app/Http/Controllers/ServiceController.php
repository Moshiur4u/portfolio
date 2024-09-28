<?php

namespace App\Http\Controllers;

use App\Models\service;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Intervention\Image\Facades\Image;

class ServiceController extends Controller
{
    function  services(){
        $services = service::all();
        return view('admin.services.services',[
            'services' => $services,
        ]);
    }
    function service_store(Request $request){
        $request ->validate([
            'title' =>  'required',
            'icon' =>  'required',
            'cover_image' =>  'required',
            'desp' =>  'required',
        ]);
        if (service::where('title', $request->title)->exists()){
            return back()->with('exists', 'This Services Already exists Your list');
        } else {

        $icon = $request->icon;
        $extension = $icon->extension();
        $file_name = Str::lower(str_replace(' ', '-',  $request->title)). '.' .$extension;
        // echo $file_name;
        Image::make($icon)->save(public_path('uploads/service/'.$file_name ));
        $cover_image = $request->cover_image;
        $extension2 = $cover_image->extension();
        $file_name2 = Str::lower(str_replace(' ', '-',  $request->title)).'cover'. '.' .$extension2;
        Image::make($cover_image)->save(public_path('uploads/service/'.$file_name2 ));
       service::insert([
            'title' =>$request->title,
            'icon' =>$file_name,
            'cover_image' =>$file_name2,
            'descrioption' =>$request->desp,
            'created_at'=> Carbon::now(),

        ]);
        return back()->with('service', 'Your service Seccessfully Added');
        }
    }
    function service_delete($service_id){
        $service = service::find($service_id);
        $delete_from = public_path('uploads/service/'.$service->icon );
        unlink( $delete_from);
        service::find( $service_id)->delete();
        return back()->with('delete', 'Your data has beed Seccessfully delete');
    }
    function service_status($service_id){
        $service = service::find($service_id);
        if ($service->status==1) {
            $total_active = service::where('status', 1)->count();
            if ($total_active ==3) {
                return back()->with('min', 'Your Active Minimum services');
            } else {
                service::find($service_id)->update([
                'status' => 0,
            ]);
            return back();
            }
        } else {
            $total_active = service::where('status', 1)->count();
            if ($total_active == 6) {
                return back()->with('max', 'Your Active Maximum services');
            } else {
                service::find($service_id)->update([
                'status' => 1,
            ]);
            return back();
            }
        }
    }

    function service_details($service_id){
        $service = service::find($service_id);
        return view('frontend.service_details',[
            'service'=>$service,
        ]);
    }

}
