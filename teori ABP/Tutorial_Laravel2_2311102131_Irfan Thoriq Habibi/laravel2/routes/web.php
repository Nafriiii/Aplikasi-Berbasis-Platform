<?php

use App\Http\Controllers\AuthController;
use Illuminate\Support\Facades\Route; 

Route::get('/login', [AuthController::class, 'login'])->name('login');
Route::post('/auth', [AuthController::class, 'auth'])->name('auth');

Route::get('/registration', [AuthController::class, 'registration'])->name('registration');
Route::post('/register', [AuthController::class, 'register'])->name('register');

Route::get('/home', [AuthController::class, 'home'])->name('home');
Route::get('/logout', [AuthController::class, 'logout'])->name('logout');