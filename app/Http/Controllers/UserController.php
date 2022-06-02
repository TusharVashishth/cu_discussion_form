<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class UserController extends Controller
{

    public function index(Request $request)
    {
        $params = $request->query();
        $query = User::select("name", "email");
        if (isset($params["name"])) {
            $query->where("name", 'LIKE', '%' . $params["name"] . '%');
        }
        $users = $query->paginate(15);
        return view('users', compact('users'));
    }

    public function loginPage()
    {
        return view('login');
    }

    public function login(Request $request)
    {
        $payload = $request->validate([
            "name" => 'required|min:2|max:50',
            "uuid" => 'required'
        ]);

        $user = User::where('uuid', '=', $payload['uuid'])->first();
        if (isset($user)) {
            Auth::login($user);
            return redirect()->route('home');
        }
        return back()->withErrors([
            'uuid' => 'The provided credentials do not match our records.',
        ])->onlyInput('uuid');
    }

    public function logout(Request $request)
    {
        Auth::logout();
        $request->session()->invalidate();
        $request->session()->regenerateToken();
        return redirect('/login');
    }
}
