@extends('layouts.admin')

@section('content')
    <div class="col-lg-10 m-auto" >
    	<div class="card">
    		<div class="card-header alert-success text-center">
            <h3>User List</h3>
        </div>
        <form action="{{ route('user.delete') }}" method="POST">
                @csrf
        <div class="card-body">
          <table class=" table table-bordered">
                    <tr>
                        <th>
                          <div class="form-check">
                            <label class="form-check-label">
                                 <input id="checkAll" type="checkbox" class="form-check-input"> Checked All
                                <i class="input-frame"></i>
                               </label>
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
                            <div class="form-check">
                            <label class="form-check-label">
                                <input type="checkbox" class="form-check-input check" name="checked_user_id[]" value="{{$user->id}}">
                                <i class="input-frame"></i>
                            </label>
                            </div>    
                        </td>
                        <td>{{ $sl+1 }}</td>
                        <td>
                        @if ($user->photo == null)
                         <img src="{{ Avatar::create($user->name)->toBase64()}} "/>
                        @else
                        <img src="{{asset('uploads/users')}}/{{$user->photo}}" alt="profile">
                        @endif
                        </td>
                        <td>{{$user->name}}</td>
                        <td>{{$user->email}}</td>
                        <td>
                        <form action="{{route('delete.user')}}" method="POST">
                            @csrf

                        <button type="submit" class="btn btn-danger btn-icon" name="user_id" value="{{$user->id}}">
                            <i data-feather="trash"></i>
                        </button>

                        </form>

                        {{-- delete user using - href --}}
                        {{-- <a href="{{route('delete.user',$user->id)}}" class="btn btn-danger btn-icon">
                            <i data-feather="trash"></i>
                        </a> --}}
                        </td>
                    </tr>
                    @empty
                    <tr>
                        <td class="text-center" colspan="5">No Data Found</td>
                    </tr>
                    @endforelse
                </table>
            @if($users->count()!= 0)
            <div>
                <button class="btn btn-danger mt-2" type="submit" name="delete_btn" value="1" >
                    Delete All
            </button>
            </div>
            @endif
        </div>
        </form>
    	</div>
    </div>
@endsection


@section('footer_script')
<script>
    $("#checkAll").click(function(){
    $('.check:checkbox').not(this).prop('checked', this.checked);
    });
</script>

@endsection
