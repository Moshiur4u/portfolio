<?php

use App\Http\Controllers\BannerController;
use App\Http\Controllers\ProfileController;
// here we call  Usercontroller controller
use App\Http\Controllers\FrontendController;
use App\Http\Controllers\SocialController;
use App\Http\Controllers\LogoController;
use App\Http\Controllers\ProjectController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\ServiceController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

// Frontend
Route::get('/', [FrontendController::class, 'Welcome'])->name('index');
Route::get('/service/details/{service_id}',[ServiceController::class, 'service_details'])->name('service.details');

// Route::get('/', function () {
//     return view('welcome');
// });

Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');

// Route::middleware('auth')->group(function () {
//     Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
//     Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
//     Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
// });

require __DIR__ . '/auth.php';

Route::get('/edit/profile', [UserController::class, 'edit_profile'])->name('edit.profile');
// this route make for connecting database update
Route::post('update/profile', [UserController::class, 'update_profile'])->name('update.profile');

Route::post('update/password', [UserController::class, 'update_password'])->name('update.password');

Route::post('upate/photo', [UserController::class, 'update_photo'])->name('update.photo');
Route::get('user/list', [UserController::class, 'user_list'])->name('user.list');
// Route::get('delete/user/{user_id}', [UserController::class, 'delete_user'])->name('delete.user');
Route::post('delete/user', [UserController::class, 'delete_user'])->name('delete.user');
Route::get('trash/userlist', [UserController::class, 'trash_userlist'])->name('trash.userlist');
Route::get('restore/userlist/{user_id}', [UserController::class, 'restore_userlist'])->name('restore.userlist');
Route::get('user/parmanent/delete/{user_id}', [UserController::class, 'user_parmanent_delete'])->name('user.parmanent.delete');
Route::post('user/delete', [UserController::class, 'user_delete'])->name('user.delete');
Route::post('redel/trashuser', [UserController::class, 'redel_trashuser'])->name('redel.trashuser');

// Social part
Route::get('add/socail', [SocialController::class, 'add_socail'])->name('add.socail');
Route::post('social/store', [SocialController::class, 'social_store'])->name('social.store');
Route::get('status/change/{social_id}', [SocialController::class, 'status_change'])->name('status.change');


// Logo sertion start here
Route::get('/logo', [LogoController::class, 'logo_change'])->name('logo');
Route::post('/logo/update', [LogoController::class,'logo_update'])->name('logo.update');

//Menu sections Start from here---------
Route::get('/banner',[BannerController::class, 'banner'])->name('banner');
Route::post('/banner/store',[BannerController::class, 'banner_store'])->name('banner.store');
Route::get('/banner/delete/{banner_id}',[BannerController::class, 'banner_delete'])->name('banner.delete');

//service  sections Start from here---------
Route::get('/services',[ServiceController::class, 'services'])->name('services');
Route::post('/service/store',[ServiceController::class, 'service_store'])->name('service.store');
Route::get('/service/delete/{service_id}',[ServiceController::class, 'service_delete'])->name('service.delete');
Route::get('/service/status/{service_id}',[ServiceController::class, 'service_status'])->name('service.status');

//project sections Start from here---------
Route::get('/project',[ProjectController::class, 'project'])->name('project');
Route::post('/project/store',[ProjectController::class, 'project_store'])->name('project.store');
Route::get('/project/status/{project_id}',[ProjectController::class, 'project_status'])->name('project.status');
