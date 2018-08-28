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



Auth::routes();

Route::get('/', 'HomeController@index')->name('home');
Route::get('/stores', 'HomeController@index')->name('home');
Route::get('/add', 'HomeController@addPage')->name('add');
Route::get('/stores/{store_id}', 'StoreController@index')->name('store');
Route::post('/addstore', 'HomeController@addstore')->name('addstore');
Route::post('/createmanager', 'ManagerController@index')->name('createmanager');
Route::post('/addmanager', 'ManagerController@addmanager')->name('addmanager');
Route::post('/addproduct', 'HomeController@addProduct')->name('addproduct');
