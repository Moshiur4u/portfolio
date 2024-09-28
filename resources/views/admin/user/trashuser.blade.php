@extends('layouts.admin')

@section('content')
    <div class="col-lg-12 m-auto" >
    	<div class="card">
    		<div class="card-header alert-success text-center">
            <h3>Trashed User List</h3>
        </div>
        <form action="{{route('redel.trashuser')}}" method="POST">
         @csrf
        <div class="card-body">
            <table class=" table table-bordered">
                    <tr>
                        <th>
                            <div class=" form-check">
                               <label class="form-check-label">
                                <input id="checkAll" type="checkbox" class="form-check-input"> Checked All
                                <i class="input-frame"></i></label>
                            </div>
                        </th>
                        <th>SL</th>
                        <th>Photo</th>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Action</th>
                    </tr>
                        @forelse ($users as $sl=> $user )
                    <tr>
                        <td>
                            <div class=" form-check">
                      <label class="form-check-label">
                    <input type="checkbox" class="form-check-input check"name="checked_restoreuser_id[]" value="{{$user->id}}">
                    <i class="input-frame"></i></label>
                            </div>
                        </td>
                        <td>{{ $sl+1 }}</td>
                        <td>
                        @if ($user->photo == null)
                         <img src="{{ Avatar::create($user->name)->toBase64() }}" />
                        @else
                        <img src="{{asset('uploads/users')}}/{{$user->photo}}" alt="profile">
                        @endif
                        </td>
                        <td>{{$user->name}}</td>
                        <td>{{$user->email}}</td>
                        <td class="d-flex">
                         <a href=" {{ route('restore.userlist', $user->id) }}" class="btn btn-info btn-icon">
                            <i data-feather="rotate-cw"></i>
                        </a>
                        &nbsp;
                 <button name="user_id" data-link= "{{route('user.parmanent.delete',$user->id)}} "value="{{$user->id}}" type="button" class="btn btn-danger btn-icon del_btn">
                        <i data-feather="trash"></i>
                        </button>
                        </td>
                    </tr>
                    @empty
                    <tr>
                        <td class="text-center font-weight-normal" colspan="5">NO Data Found</td>
                    </tr>
                    @endforelse
                </table>
            @if($users->count() != 0)
                <div class="mt-2">
                <button class="btn btn-info" type="submit" name="restore_btn" value="1">Restore All</button>
                <button class="btn btn-danger" type="submit" name="pdelete_btn" value="2">Delete  All </button>
            </div>
            @endif
        </div>
        </form>
    	</div>
    </div>
@endsection

@section('footer_script')
<script>
 $('.del_btn').click(function(){
    var user_id = $(this).val();
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

 });

$("#checkAll").click(function(){
$('.check:checkbox').not(this).prop('checked', this.checked);
});
</script>
@endsection
