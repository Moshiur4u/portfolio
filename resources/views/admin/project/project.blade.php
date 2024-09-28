@extends('layouts.admin')
@section('content')
<div class="row">
	<div class="col-lg-8">
		<div class="card-header">
			<h3>Project's list</h3>
		</div>
		<div class="card-body">
			<table class="table table-bordered">
				<tr>
					<th>Project Title</th>
					<th>Project Name</th>
					<th>Project Photo</th>
					<th>Status</th>
					<th>Action</th>
				</tr>
                @foreach ($projects as  $project)

                @endforeach
                <tr>
					<td>{{ $project->title }}</td>
					<td>{{ $project->name }}</td>
					<td><img width="100" src="{{asset('uploads/project_photo')}}/{{$project->image }}"></td>
					<td><a href="{{route('project.status',$project->id)}}" class="btn btn-{{$project->status==0?'secondary':'success'}}">{{$project->status==0?'Deactive':'Active'}}</a> </td>
					<td>
						<button class="btn btn-danger">
							Delete
						</button>
					</td>
				</tr>

			</table>
		</div>
	</div>
	<div class="col-lg-4">
		<div class="card">
			<div class="card-header">
				<h3>Add Project's Info.</h3>
			</div>
			<div class="card-body">
				<form action="{{ route('project.store') }}" method="POST" enctype="multipart/form-data">
                    @csrf
				<div class="my-3">
					<label for="" class="form-label">Project Title</label>
					<input type="text" class="form-control" name="title">
				</div>
                        @error('title')
                            <strong class="alert-danger">{{$message}}</strong>
                        @enderror
                    <div class="my-3">
                        <label for="" class="form-label">Project Name</label>
                        <input type="text" class="form-control" name="pname">
                    </div>
                    @error('pname')
                            <strong class="alert-danger">{{$message}}</strong>
                        @enderror
                    <div class="my-3">
                        <label for="" class="form-label">Project Image</label>
                        <input type="file" class="form-control" name="pimage">
                    </div>
                    @error('pimage')
                            <strong class="alert-danger">{{$message}}</strong>
                        @enderror
                    <div class="my-3">
                        <label for="" class="form-label">Project Descrioption</label>
                        <textarea id="summernote" name="desp" cols="30" rows="10" class="form-control"></textarea>
                    </div>
                    @error('desp')
                            <strong class="alert-danger">{{$message}}</strong>
                        @enderror
				<div class="my-3">
					<Button type="submit" class="btn btn-primary"> Add Project</Button>
				</div>
				</form>
			</div>
		</div>
	</div>
</div>
@endsection

@section('footer_script')
    <script>
        $('#summernote').summernote();
    </script>
@endsection
