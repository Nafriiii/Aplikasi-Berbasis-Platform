<?php

use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('profile');
});

Route::get('/profile-page', function () {
    return view('profile');
});

Route::get('/CV', function () {
    return redirect('/native/index.php');
});