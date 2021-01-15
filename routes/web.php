<?php

use Illuminate\Support\Facades\Route;

Route::get('/', 'HomeController@index')->name('home');
Route::get('/cart', 'CartController@index')->name('cart');
Route::get('/addToCart/{id}', 'CartController@addToCart')->name('addToCart');
Route::get('/removeCartItem/{id}', 'CartController@removeCartItem')->name('removeCartItem');
Route::post('/order', 'CartController@order')->name('order');
Route::get('/tracking', 'CartController@tracking')->name('tracking');
Route::get('/tracking2', 'CartController@tracking2')->name('tracking2');
Route::get('/product/{id}', 'HomeController@productDetail')->name('product-detail');
Route::get('/category/{slug}/{id}', [
    'as' => 'category.product',
    'uses' => 'CategoryController@index'
]);
