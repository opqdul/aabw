<?php

use CodeIgniter\Router\RouteCollection;

/**
 * @var RouteCollection $routes
 */



// $routes->get('/', 'Home::index');
// $routes->get('/akun1', 'Akun1::index');
// $routes->get('/akun1/new', 'Akun1::new');
// $routes->post('/akun1', 'Akun1::store');
// $routes->get('akun1/edit/(:num)', 'Akun1::edit/$1');
// $routes->put('akun1/(:num)', 'Akun1::update/$1');
// $routes->post('akun1/(:num)', 'Akun1::update/$1');
// $routes->delete('akun1/(:num)', 'Akun1::destroy/$1');

// $routes->get('/akun2/new', 'Akun2::new');
// $routes->get('/akun2/(:segment)/edit', 'Akun2::edit/$1');
// $routes->post('/akun2/(:any)', 'Akun2::delete/$1');
// $routes->resource('akun2');

// $routes->get('/akun3/new', 'Akun3::new');
// $routes->post('/akun3/new', 'Akun3::create');
// $routes->get('/akun3/(:segment)/edit', 'Akun3::edit/$1');
// $routes->resource('akun3');

// $routes->post('/transaksi', 'Transaksi::create');
// $routes->get('/transaksi', 'Transaksi::index');
// $routes->resource('transaksi');
// $routes->get('transaksi/akun3', 'Transaksi::akun3');
// $routes->get('transaksi/status', 'Transaksi::status');
// $routes->get('transaksi/edit/(:num)', 'Transaksi::edit/$1');
// $routes->put('transaksi/(:num)', 'Transaksi::update/$1');
// $routes->post('transaksi/(:num)', 'Transaksi::update/$1');
// $routes->get('transaksi/(:num)', 'Transaksi::show/$1');

// batas

$routes->get('index.html', 'Home::index');
$routes->get('/', 'Home::index');
$routes->get('/home', 'Home::index');
$routes->get('/akun1', 'Akun1::index');
$routes->get('/akun1/new', 'Akun1::new');
$routes->post('/akun1', 'Akun1::store');
$routes->get('akun1/edit/(:num)', 'Akun1::edit/$1');
$routes->put('akun1/(:num)', 'Akun1::update/$1');
$routes->post('akun1/(:num)', 'Akun1::update/$1');
$routes->delete('akun1/(:num)', 'Akun1::destroy/$1');

$routes->get('akun2/edit/(:num)', 'Akun2::edit/$1');
$routes->put('akun2/(:num)', 'Akun2::update/$1');
$routes->post('akun2/(:num)', 'Akun2::update/$1');
$routes->resource('akun2');

$routes->get('akun3/edit/(:num)', 'Akun3::edit/$1');
$routes->put('akun3/(:num)', 'Akun3::update/$1');
$routes->post('akun3/(:num)', 'Akun3::update/$1');
$routes->resource('akun3');

$routes->get('transaksi/akun3', 'Transaksi::akun3');
$routes->get('transaksi/status', 'Transaksi::status');
$routes->get('transaksi/edit/(:num)', 'Transaksi::edit/$1');
$routes->put('transaksi/(:num)', 'Transaksi::update/$1');
$routes->post('transaksi/(:num)', 'Transaksi::update/$1');
$routes->get('transaksi/(:num)', 'Transaksi::show/$1');
$routes->resource('transaksi');

$routes->get('penyesuaian/edit/(:num)', 'Penyesuaian::edit/$1');
$routes->put('penyesuaian/(:num)', 'Penyesuaian::update/$1');
$routes->post('penyesuaian/(:num)', 'Penyesuaian::update/$1');
$routes->get('penyesuaian/(:num)', 'Penyesuaian::show/$1');
$routes->resource('penyesuaian');

$routes->get('jurnalumum/cetakjupdf', 'JurnalUmum::cetakjupdf');
$routes->post('jurnalumum/cetakjupdf', 'JurnalUmum::cetakjupdf');
$routes->get('jurnalumum', 'JurnalUmum::index');
$routes->post('jurnalumum', 'JurnalUmum::index');

$routes->get('posting', 'Posting::index');
$routes->post('posting', 'Posting::index');
$routes->get('posting/postingpdf', 'Posting::postingpdf');
