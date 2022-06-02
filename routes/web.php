<?php

use App\Http\Controllers\CommentController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\PostController;
use App\Http\Controllers\UserController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::middleware("auth")->group(function () {
    Route::get('/', [HomeController::class, 'index'])->name('home');
    Route::get('/users', [UserController::class, 'index'])->name('users');
    Route::resources([
        "post" => PostController::class,
        "comment" => CommentController::class
    ]);
});

Route::get('/login', [UserController::class, 'loginPage'])->name('login.page');
Route::post("/login", [UserController::class, 'login'])->name("login");
Route::post("/logout", [UserController::class, 'logout'])->name('logout');
