@extends('layout.app')

@section('content')
<div class="container">
    <div class="my-4">
        @include('layout.add_post_button')
    </div>
    <div class="col-lg-10 mx-auto my-5">
        <input type="hidden" id="postId" value="{{ $post->id }}" />
        <div class="card shadow">
            <div class="card-header">
                <h3>{{ $post->user->name }}</h3>
            </div>
            <div class="card-body px-4">
                @if (isset($post->image))
                <img src="{{ asset('storage/images/'.$post->image) }}" alt="blog_image" class="post_img" />
                @endif
                <p> {!! $post->content !!}</p>

                @if (isset($post->comments))

                <h3 class="mt-4">Comments</h3>
                <div class="commentParentDiv">
                    @foreach ($post->comments as $comment)
                    @include('partials.comment' ,["name" => $comment->user->name , "comment" =>
                    $comment->comment])
                    @endforeach
                </div>
                @endif
            </div>
        </div>
        <div class="mt-3">
            <label class="fw-bold">Add Comment</label>
            <textarea name="content" id="commentContent"></textarea>
            <div class="d-grid gap-2 mt-2">
                <button type="button" class="btn btn-success" id="commentButton">Submit</button>
            </div>
        </div>
    </div>

</div>
@endsection

@section('extraJs')
<script>
    CKEDITOR.replace( 'commentContent' );
    $(document).on("click" ,'#commentButton' ,function(){
        var comment = CKEDITOR.instances['commentContent'].getData();
        var token = "{{ csrf_token() }}";
        var postID = $("#postId").val()
        $.ajax({
            type: 'POST',
            url:"{{ route('comment.store') }}",
            data:{
                "_token":token,
                "comment":comment,
                "post_id":postID
            },
            success:function(res){
               if(res.status == 200) {
                   $(".commentParentDiv").append(res.comment)
               }
                
            }
        })

    });
</script>
@endsection