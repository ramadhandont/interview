<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It is a breeze. Simply tell Lumen the URIs it should respond to
| and give it the Closure to call when that URI is requested.
|
*/

$app->get('/', function () use ($app) {
    return $app->version();
});

$app->get('/penjualan', 'PenjualanController@index');
$app->get('/penjualan/{id}', 'PenjualanController@show');
$app->post('/penjualan', 'PenjualanController@saveAdd');
$app->put('/penjualan/{id}', 'PenjualanController@update');
$app->put('/penjualan/del/{id}', 'PenjualanController@delete');
$app->delete('/penjualan/{id}', 'PenjualanController@destroy');