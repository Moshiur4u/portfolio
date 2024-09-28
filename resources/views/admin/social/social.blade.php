@extends('layouts.admin')

@section('content')
<div class="row">
    <div class="col-lg-8">
        <div class="card">
            <div class="card-header">
                Social Icons
            </div>
            <div class="card-body">
                <table class="table table-bordered">
                    <tr>
                        <th>Icon</th>
                        <th>Link</th>
                        <th>Status</th>
                        <th>Actions</th>
                    </tr>
                   @foreach($socials as $social)
                   <tr>
                    <td>
                        <i class="{{$social->icon}}" style="font-family:fontawesome; font-size:20px;"></i>
                    </td>
                    <td>
                        <a href="{{"$social->link"}}" target="_blank">{{$social->link}}</a>
                    </td>
                    <td>
                        {{-- using tarnary sytem --}}
                        <a href="{{route('status.change',$social->id)}}" class="btn btn-{{$social->status==1?'success':'secondary'}}">{{$social->status==1?'Active':'Deactive'}}</a>

                      {{--   @if($social->status==1)
                        <a href="#" class="btn btn-success">Active</a>
                        @else
                        <a href="#" class="btn btn-danger">Deactive</a>
                        @endif --}}
                    </td>
                    <td>
                        <a href="#" class="btn btn-danger btn-icon">
                        <i data-feather="trash"></i>
                    </a>
                    </td>
                </tr>
                   @endforeach
                </table>
            </div>

        </div>
    </div>
    <div class="col-lg-4">
        <div class="card">
            <div class="card-header">
                <h3 style="color: goldenrod">Add Socail Icon's</h3>
            </div>
            <div class="card-body">
                @php
                $fonts = array (
                    'fa-youtube',
                    'fa-youtube-play',
                    'fa-youtube-square',
                    'fa-facebook',
                    'fa-facebook-f',
                    'fa-facebook-official',
                    'fa-facebook-square',
                    'fa-google',
                    'fa-google-plus',
                    'fa-google-plus-circle',
                    'fa-google-plus-official',
                    'fa-google-plus-square',
                    'fa-tumblr',
                    'fa-tumblr-square',
                    'fa-whatsapp',
                    'fa-wordpress',
                    'fa-instagram',
                    'fa-link',
                    'fa-linkedin',
                    'fa-linkedin-square',
                    'fa-spotify',
                    'fa-twitter',
                    'fa-twitter-square',
                );
                @endphp
                 <div class="my-3">
                    @foreach ($fonts as $icons)
                    <i data-icon="{{$icons}}" style="font-family:fontawesome; font-style:normal; font-size:20px; margin-right:5px; cursor: pointer; color:goldenrod" class="{{$icons}} icon"></i>
                    @endforeach
                </div>
                <form action="{{route('social.store')}}" method="POST">
                    @csrf
                    <div class="mb-3">
                        <label for="#" class="form-label">Social Icon's</label>
                        <input type="text" class="form-control icon_name" name="icon">
                    </div>
                    <div class="mb-3">
                        <label for="#" class="form-label">link</label>
                        <input type="text" class="form-control" name="link">
                    </div>
                    <div class="mb-3">
                        <button type="submit" class="btn btn-primary">ADD Icon's</button>
                    </div>
                </form>

            </div>
        </div>
    </div>
</div>
@endsection

@section('footer_script')
<script>
    $('.icon').click(function(){
       var icon = $(this).attr('data-icon');
       $('.icon_name').attr('value',icon);
    })
</script>
@endsection
