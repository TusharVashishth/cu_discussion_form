@extends('layout.app')
@section('content')
<div class="container mt-5">
    <form method="POST" action="{{ route('post.store') }}" enctype="multipart/form-data">
        @csrf
        <div class="row">
            <div class="col-lg-6 mb-3">
                <label>Title</label>
                <input type="text" class="form-control" placeholder="Enter Title" name="title"
                    value="{{ old('title') }}" />
                @error('title')
                <span class="text-danger">{{ $message }}</span>
                @enderror
            </div>
            <div class="col-lg-6 mb-3">
                <label>Image</label>
                <input type="file" class="form-control" name="image" />
                @error('image')
                <span class="text-danger">{{ $message }}</span>
                @enderror
            </div>
            <div class="col-lg-12 mb-3">
                <label>Content</label>
                <textarea name="content">{{ old('content') }}</textarea>
                @error('content')
                <span class="text-danger">{{ $message }}</span>
                @enderror
            </div>
            <div class="d-grid gap-2">
                <button type="submit" class="btn btn-primary" id="addPostBtn">Submit</button>
            </div>
        </div>

    </form>
</div>
@endsection
@section('extraJs')
<script>
    CKEDITOR.replace( 'content' );
</script>
@endsection