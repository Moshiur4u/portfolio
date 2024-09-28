@extends('layouts.admin')

@section("content")
<div class="row">
    <div class="col-lg-8 m-auto">
        <div class="card-header">
            <h2>Update Logo</h2>
        </div>
        <div class="card-body">
            <form action="/logo/update" method="POST" enctype="multipart/form-data">
                @csrf
                <div class="mb-3">
                    <label for="" class="form-label">Select Logo</label>
                    <select  name="location" class="form-control">
                    <option value="">Select Logo</option>
                    <option value="1">Header Logo</option>
                    <option value="2">Footer Logo</option>
                </select>
                @error('location')
                <strong class="text-danger">{{$message}}</strong>
                @enderror
                </div>
                <div class="mb-3">
                    <label for="" class="form-label">UPload Logo</label>
                    <input type="file"name="logo" class="form-control" onchange="document.getElementById('imuppreview').src = window.URL.createObjectURL(this.files[0])">
                </div>
                @error('logo')
                <strong class="text-danger">{{$message}}</strong>
                @enderror
                <div class="my-3 p-3 mr-5 bg-primary">
                    <img width="100" id="imuppreview" src="" alt="">
                </div>
                <div class="row">
                    <div class="col-lg-6">
                        <div class="my-3">
                        <h3>Header Logo</h3>
                        <img width="100" src="{{asset('uploads/logo')}}/{{$header_logo->first()->logo}}" alt="">
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="my-3">
                        <h3>Footer Logo</h3>
                        <img width="100" src="{{asset('uploads/logo')}}/{{$footer_logo->first()->logo}}" alt="">
                        </div>
                    </div>
                </div>
                <div class="mt-3">
                    <button type="submit" class="btn btn-primary">Logo UPdate</button>
                </div>
            </form>
        </div>
    </div>
</div>



@endsection
