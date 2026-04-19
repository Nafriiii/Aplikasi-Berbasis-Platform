<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Routing\Controller as BaseController;

class Controller extends BaseController
{
    use AuthorizesRequests, ValidatesRequests;

    public function index()
    {
        return view('mahasiswa');
    }

    public function getData()
    {
        $path = public_path('data/mahasiswa.json');
        $json = file_get_contents($path);
        $data = json_decode($json, true);

        return response()->json($data);
    }
}