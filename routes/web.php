<?php

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
Route::group(['middleware'=>'admin'], function () {
Route::resource('products/edit','ProductsController');
Route::resource('products/create','ProductsController');
Route::resource('products/delete','ProductsController');
Route::resource('pedidos','PedidosController');
});
Route::resource('products','ProductsController');
Route::resource('eliminarProducto','ProductsController');
Route::resource('category','CategoryController');
Route::get('/', function () {
    return view('welcome');
});
Route::resource('comprar','Order_productController');
Route::resource('registrar','RegistroController');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
Auth::routes();

Route::get('/main','MainController@main');
Route::get('/home', 'HomeController@index')->name('home');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::resource('shopping_carts','ShoppingCartsController',['only'=>['store','destroy']]);

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
