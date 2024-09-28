@extends('layouts.admin')

@section('content')
<div class="row">
	<div class="col-lg-8">
		<div class="card-header">
			<h3>Banner list</h3>
		</div>
		<div class="card-body">
			<table class="table table-bordered">
				<tr>
					<th>Title</th>
					<th>Description</th>
					<th>Image</th>
					<th>Action</th>
				</tr>
				@foreach ($banners as  $banner )
				<tr>
					<td>{{ $banner ->title }}</td>
					<td>{{ $banner ->description }}</td>
					<td> <img width="100" style="border-radius:0!important" src="{{asset('uploads/banner')}}/{{$banner->image}}" alt=""> </td>
					<td>
						<a href="{{route('banner.delete',$banner->id)}}" class="btn btn-danger btn-icon del_btn"><i data-feather="trash"></i>
                    </a>
                </td>
				</tr>

				@endforeach
			</table>
		</div>
	</div>
	<div class="col-lg-4">
		<div class="card">
			<div class="card-header">
				<h3>Add Banner Info.</h3>
			</div>
			<div class="card-body">
                @if (session('banner'))
                    <div class="alert alert-success ">{{ session('banner') }}</div>
                @endif
				<form action="{{route('banner.store')}}" method="POST" enctype="multipart/form-data">
                    @csrf
				<div class="my-3">
					<label for="" class="form-label">Title</label>
					<input type="text" class="form-control" name="title">
				</div>
                @error('title')
                    <strong class="text-danger">{{ $message }}</strong>
                @enderror
				<div class="my-3">
					<label for="" class="form-label">Description</label>
					<input type="text" class="form-control" name="description">
				</div>
                @error('descriptions')
                    <strong class="text-danger">{{ $message }}</strong>
                @enderror
				<div class="my-3">
					<label for="" class="form-label">Banner Image</label>
					<input type="file" class="form-control" name="image">
				</div>
                @error('image')
                <strong class="text-danger">{{ $message }}</strong>
            @enderror
				<div class="my-3">
					<Button type="submit" class="btn btn-primary"> Add Banner</Button>
				</div>
				</form>
			</div>
		</div>
	</div>
</div>

@endsection
