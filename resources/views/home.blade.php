@extends('layout.app')
@section('content')
@include('partials.flash_message')
<div class="container">
    <div class="my-4">
        @include('layout.add_post_button')
    </div>
    @foreach ($posts as $post )
    <div class="col-lg-9 mx-auto my-5">
        <div class="mt-3">
            <div class="card shadow">
                <div class="card-title px-4 pt-3">
                    <h3>{{ $post->user->name }}</h3>
                </div>
                <div class="card-body px-4">
                    @if (isset($post->image))
                    <img src="{{ asset('storage/images/'.$post->image) }}" alt="blog_image" class="post_img" />
                    @endif
                    <p> {!! $post->content !!}</p>
                    <div class="d-grid gap-2">
                        <a href="{{ route('post.show' ,$post->id) }}" class="btn btn-secondary">Comments</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    @endforeach

</div>
@endsection

@section('extraJs')
@endsection