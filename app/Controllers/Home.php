<?php

namespace App\Controllers;

class Home extends BaseController
{
    public function index(): string
    {
        $data['title'] = "Home";
        $data['mSubHome'] = "show";
        $data['mSelectHome'] = "active";
        $karyawanModel = new \App\Models\Karyawan();
        $data['karyawan'] = $karyawanModel->findAll();

        // var_dump($data['karyawan'][2]);
        // exit;

        return view('home/dashboard', $data);
    }
}
