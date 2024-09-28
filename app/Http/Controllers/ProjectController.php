<?php

namespace App\Http\Controllers;

use App\Models\project;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Intervention\Image\Facades\Image;

class ProjectController extends Controller
{
  function project(){
    $projects = project::all();
    return view('admin.project.project',[
        'projects'=> $projects,
]);
  }
  function project_store(Request $request){
    $request->validate([
      'title'=>'required',
      'pname'=>'required',
      'pimage'=>'required',
      'desp'=>'required',
      'created_at'=>Carbon::now(),
    ]);
    $image = $request->pimage;
    $extension = $image->extension();
    $file_name = 'project_photo'.'-'.'.'.$extension;
    Image::make($image )->save(public_path('uploads/project_photo/'.$file_name));
    project::insert([
      'title'=>$request->title,
      'name'=>$request->pname,
      'description'=>$request->desp,
      'image'=>$file_name,
    ]);
    return back();
  }
  function project_status($project_id){
        $project = project::find($project_id);
        if ($project->status==1) {
            project::find($project_id)->update([
                'status' => 0,
            ]);
            return back();
        } else {
            project::find($project_id)->update([
                'status' => 1,
            ]);
            return back('');
        }

  }
}
