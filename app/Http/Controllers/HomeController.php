<?php

namespace App\Http\Controllers;

use App\Models\Post;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index()
    {
        $posts = Post::with(['user' => function ($query) {
            $query->select("id", "name");
        }])->orderBy('id', 'desc')->paginate(15);
        return view('home', compact("posts"));
    }
}
