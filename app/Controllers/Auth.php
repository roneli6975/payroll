<?php

namespace App\Controllers;

class Auth extends BaseController
{
    public function login(): string
    {
        return view('auth/login');
    }

    public function registrasi(): string
    {
        return view('auth/registrasi');
    }
}
