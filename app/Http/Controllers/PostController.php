<?php

namespace App\Http\Controllers;

use App\Models\Post;
use Illuminate\Http\Request;


class PostController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('add_post');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

        $payload = $request->validate([
            "title" => 'required|min:2|max:200',
            "image" => $request->image ?  'image|mimes:png,jpg,jpeg,gif,svg' : [],
            "content" => 'required|min:2|max:5000'
        ]);
        $image = $request->image;
        if (isset($image)) {
            $imageName = time() . '.' . $image->extension();
            $image->storeAs("public/images", $imageName);
            $payload["image"] = $imageName;
        }
        $payload["user_id"] = $request->user()->id;
        Post::create($payload);
        return redirect()->route('home')->with("success", "Post Added Successfully!!");
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $post = Post::with(['user' => function ($query) {
            $query->select("id", "name");
        }, "comments", "comments.user"])->where('id', $id)->first();
        return view('show', compact('post'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
