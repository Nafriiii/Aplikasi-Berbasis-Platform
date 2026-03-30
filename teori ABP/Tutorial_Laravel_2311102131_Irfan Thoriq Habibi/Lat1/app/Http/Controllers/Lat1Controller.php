<?php

namespace App\Http\Controllers;

class Lat1Controller extends Controller{
    public function index() {
        $data["nama"]="Irfan Thoriq Habibi";
        $data["NIM"]="2311102131";
        $data["Kelas"]="PS1IF-11-04";
        $data["asal"]="Selong";
        return view('v_latihan1', $data);
    }

    public function method2(){
        $data['title'] = "Daftar Mahasiswa";
        $data['daf_mhs'] = array(
            array("nama" => "Irfan Thoriq Habibi", "asal" => "Selong"),
            array("nama" => "Agus", "asal" => "Bandung"),
            array("nama" => "Budi", "asal" => "Jakarta"),
            array("nama" => "Roni", "asal" => "Surabaya")
        );
        return view('v_latihan2', $data);
    }
}