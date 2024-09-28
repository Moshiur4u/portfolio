@extends('layouts.admin')

@section('content')
<div class="row">
	<div class="col-lg-7">
		<div class="card-header">
			<h3>Sevice's list</h3>
		</div>
		<div class="card-body">
			<table class="table table-bordered">
				<tr>
					<th>Service Title</th>
					<th>Icons</th>
					<th>Status</th>
					<th>Action</th>
				</tr>
                @foreach ($services as $service )
                <tr>
					<td>{{$service->title }}</td>
					<td><img src ="{{asset('uploads/service') }}/{{$service ->icon }} ">  </td>
					<td><a href="{{route('service.status', $service->id)}}" class="btn btn-{{$service->status==0?'secondary':'success'}}">{{$service->status==0?'Deactive':'Active'}}</a> </td>
					<td>
                        <button data-link=" {{route('service.delete',$service->id) }}" class="btn btn-danger del_btn">Delete
                        </button>
                    </td>
				</tr>
                @endforeach
			</table>
		</div>
	</div>
	<div class="col-lg-5">
		<div class="card">
			<div class="card-header">
				<h3>Add Service Info.</h3>
			</div>
			<div class="card-body">
                @if (session('service'))
                    <div class="alert alert-success ">{{ session('service') }}</div>
                @endif
				<form action="{{route('service.store')}}" method="POST" enctype="multipart/form-data">
                    @csrf
				<div class="my-3">
					<label for="" class="form-label">Service Title</label>
					<input type="text" class="form-control" name="title">
				</div>
                @error('title')
                    <strong class="text-danger">{{ $message }}</strong>
                @enderror
				<div class="my-3">
					<label for="" class="form-label">Service Icon</label>
					<input type="file" class="form-control" name="icon">
				</div>
                @error('icon')
                <strong class="text-danger">{{ $message }}</strong>
            @enderror
                        <div class="my-3">
                            <label for="" class="form-label">Cover Image</label>
                            <input type="file" class="form-control" name="cover_image">
                        </div>
                        @error('cover_image')
                        <strong class="text-danger">{{ $message }}</strong>
                    @enderror
                    <div class="my-3">
                        <label for="" class="form-label">Descrioption</label>
                        <textarea id="summernote" name="desp" cols="30" rows="10" class="form-control"></textarea>
                    </div>
                    @error('desp')
                        <strong class="text-danger">{{$message}}</strong>
                    @enderror
				<div class="my-3">
					<Button type="submit" class="btn btn-primary"> Add Service</Button>
				</div>
				</form>
			</div>
		</div>
	</div>
</div>
@endsection
@section('footer_script')
<script>
$('.del_btn') .click( function(){
    var link = $(this).attr('data-link');
     Swal.fire({
          title: 'Are you sure?',
          text: "You won't be able to revert this!",
          icon: 'warning',
          showCancelButton: true,
          confirmButtonColor: '#3085d6',
          cancelButtonColor: '#d33',
          confirmButtonText: 'Yes, delete it!'
        }).then((result) => {
          if (result.isConfirmed) {
            window.location.href = link;
          }
        })
})
</script>
@if (session('delete'))
	<script>
		Swal.fire(
      'Deleted!',
      '{{session('delete')}}',
      'success'
    )
	</script>
@endif
@if (session('max'))
	<script>
		Swal.fire(
      'Active!',
      '{{session('max')}}',
      'success'
    )
	</script>
@endif
@if (session('min'))
	<script>
		Swal.fire(
      'Active!',
      '{{session('min')}}',
      'success'
    )
	</script>
@endif
@if (session('exists'))
	<script>
		Swal.fire(
      'exists!',
      '{{session('exists')}}',
      'success'
    )
	</script>
@endif
	<script>$('#summernote').summernote();</script>

@endsection
