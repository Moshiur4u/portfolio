@extends('layouts.admin')

@section('content')
        <div class="row">
            {{--  Here start User Info Update  --}}
                <div class="col-lg-6">
                    <div class="card">
                        <div class="card-header">
                            Update User  Information.
                        </div>
                        <div class="card-body">
                            <form action="{{  route('update.profile')  }}" method="POST">
                                    @csrf
                                   <div class="mb-3">
                                    <label for="#">Name</label>
                                    <input type="text" name="name" class="form-control" value="{{ Auth::user()->name}}">
                                   </div>
                                   <div class="mb-3">
                                    <label for="#">Email Address</label>
                                    <input type="email" name="email" class="form-control" value="{{ Auth::user()->email}}">
                                   </div>
                                    <div class="mb-3">
                                        <button class="btn btn-info" type="submit"> Update Info</button>
                                    </div>
                            </form>
                        </div>
                    </div>
                </div>
                    {{--  here we start password Update fill  --}}
                <div class="col-lg-6">
                    <div class="card">
                        <div class="card-header">
                             Update Password.
                        </div>
                        <div class="card-body">
                            @if (session('success'))
                                <strong class="text-success">{{ session('success') }}</strong>
                            @endif
                            <form method="POST" action="{{route('update.password')}}" >
                                    @csrf
                                   <div class="mb-3">
                                    <label for="#">Current Password</label>
                                    <input type="password" name="current_pass" class="form-control" >
                                    @error("current_pass")
                                         {{--  this is memuall Erro Message Options
                                        <strong class="text-danger ">Please Input Currect Passcod</strong> --}}
                                        {{--  Laravel here make defult message Options  --}}
                                        <strong class="text-danger ">Please Input Currect Passcod</strong>
                                    @enderror

                                    {{--  We Show a session message useing blow code   --}}
                                           @if (session('wrong_passcod'))
                                                <strong class="text-danger" >{{ session('wrong_passcod') }}</strong>
                                           @endif

                                   </div>
                                   <div class="mb-3">
                                    <label for="#">New Password</label>
                                    <input type="password" name="new_password" class="form-control" >
                                    @error("new_password")
                                        <strong class="text-danger ">{{ $message }}</strong>
                                    @enderror
                                   </div>
                                   <label for="#">Conformation Password</label>
                                    <input type="password" name="password_conformation" class="form-control">
                                    @error("password_conformation")
                                    {{--  this is memuall Erro Message Options
                                        <strong class="text-danger ">Make Sure is You Confrom Password</strong>  --}}
                                        {{--  Laravel here make defult message Options  --}}
                                        <strong class="text-danger ">{{ $message }}</strong>
                                    @enderror
                                   </div>
                                    <div class="mb-3">
                                        <button class="btn btn-info" type="submit"> Update Password</button>
                                    </div>
                            </form>
                        </div>
                    </div>
                </div>
                {{--  here we start Image Update Options  --}}
                <div class="col-lg-6">
                    <div class="card">
                        <div class="card-header">
                             Update Users Photo.
                        </div>
                        <div class="card-body">
                            <form action="{{  route('update.photo')  }}" method="POST" enctype="multipart/form-data">
                                    @csrf
                                   <div class="mb-3">
                                    <label for="#">Update User Photo</label>
                                    <input type="file" name="photo" class="form-control">
                                    @error('photo')
                                            <strong class="text-danger">{{$message  }}</strong>
                                    @enderror
                                   </div>
                                    <div class="mb-3">
                                        <button class="btn btn-info" type="submit"> Update User Photo</button>
                                    </div>
                            </form>
                        </div>
                    </div>
                </div>
        </div>
@endsection

