<?php

    namespace App\Http\Controllers;

    use App\Models\User;
    use Illuminate\Http\Request;
    use Illuminate\Support\Facades\Auth;
    use Intervention\Image\Facades\Image;
    use Illuminate\Validation\Rules\Password;

    class UserController extends Controller
    {
        function edit_profile(){
            return view('admin.user.edit');
        }

        function update_profile(Request $request){
            User::find(Auth::id())->update([
                'name'=>$request->name,
                'email'=>$request->email,
            ]);
            return back();
        }

        function update_password(Request $request){
            $request->validate([
                // this variable need for validate password filed what we want to require
                'current_pass'=>'required',
                'new_password'=>'required',
                'new_password'=>Password::min(8)
                    ->letters()
                    ->mixedCase()
                    ->numbers()
                    ->symbols(),
                'password_conformation'=>'required',
            ]);
            if (password_verify($request->current_pass, Auth::user()->password )) {
            User::find(Auth::id())->update([
                'password'=>bcrypt($request->password),
            ]);
            return back()->with ('success', 'Your Successfully Update Your Passcode');
            } else{
                // here we apply the code for make a session message
                return back()->with('wrong_passcod',  'Wrong Currect Passcod');
                // echo 'Not Okay';
            }

        }

        function update_photo(Request $request){

                if (Auth::user()->photo == null) {

                    // echo 'NO Picture';

             // Photo valiadations
            $request->validate([
                'photo'=>'required',
                'photo'=>'image',
             // 'photo'=>'File|Max:512',
            ]);
            // print_r($request->photo);
            $photo = $request->photo;
            $extension = $photo->extension();
            // echo $extension;
            $photo_name = Auth::id(). '.' .$extension;
            // echo $photo_name;
            Image::make($photo)->save(public_path('uploads/users/'.$photo_name));
            // from here we start photo update
            User::find(Auth::id())->update([
                "photo"=>$photo_name,
            ]);

            return back();

                } else {

                $request->validate([
                'photo'=>'required',
                'photo'=>'image',
             // 'photo'=>'File|Max:512',
            ]);

                $delete_photo = public_path('uploads/users/'. Auth::user()->photo);
                unlink($delete_photo);

            // print_r($request->photo);
            $photo = $request->photo;
            $extension = $photo->extension();
            // echo $extension;
            $photo_name = Auth::id(). '.' .$extension;
            // echo $photo_name;
            Image::make($photo)->save(public_path('uploads/users/'.$photo_name));
            // from here we start photo update
            User::find(Auth::id())->update([
                "photo"=>$photo_name,
            ]);

            return back();

            // echo 'Picture Achay';

                }

         }
         function user_list(){
            $users = User::where('id','!=', Auth::id())->get();
            return view('admin.user.userlist', compact('users'));
         }
         // delete user using from

         function delete_user(Request $request){
            User::find($request->user_id)->delete();
            return back();
         }
         // delete user using href---

         // function delete_user($user_id){
         //    User::find($user_id)->delete();
         //    return back();

         // }

         function trash_userlist(){
            $users = User::onlyTrashed()->get();
            return view('admin.user.trashuser',[
               'users' => $users,
            ]);
         }

         function restore_userlist($user_id){
            user::onlyTrashed()->find($user_id)->restore();
            return back();
         }

         function user_parmanent_delete($user_id){
            $user = User::onlyTrashed()->find($user_id);
            // here show user information
            // return $user;
            if ($user->photo != null){
                $delete_form = public_path('uploads/users/'.$user->photo);
                unlink($delete_form);
            }
                User::onlyTrashed()->find($user_id)->forceDelete();
                return back();
         }
        function user_delete(Request $request){
            foreach ($request->checked_user_id as $user) {

                // delete Queary All user
                User::find($user)->delete();
            }

            return back();
        }

      function redel_trashuser(Request $request){
        if($request->restore_btn==1){
        foreach($request->checked_restoreuser_id as $user_id){
            // echo $user.'<br>';
         user::onlyTrashed()->find($user_id)->restore();
        }

        }else {
            foreach($request->checked_restoreuser_id as $users_id)
            {
            // echo $user.'<br>';
         user::onlyTrashed()->find($users_id)->forceDelete();
        }
        
        }
         // print_r($request->all());
         // print_r($request->checked_restoreuser_id);
        return back();
        }
            

}
