<?php

use CodeIgniter\Router\RouteCollection;

/**
 * @var RouteCollection $routes
 */
// $routes->get('/', 'Auth::login');
// $routes->get('/login', 'Auth::login');
$routes->get('/', 'Home::index');
$routes->get('/registrasi', 'Auth::registrasi');


$routes->post('/excel/import_karyawan', 'Excel::import_karyawan');
