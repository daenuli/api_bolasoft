<?php

/** @var \Laravel\Lumen\Routing\Router $router */

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

$router->get('/', function () use ($router) {
    return $router->app->version();
});

$router->group(['prefix' => 'api'], function () use ($router) {
    $router->post('register', 'AuthController@register');
    $router->post('login', 'AuthController@login');
    $router->get('refresh', 'AuthController@refresh');

    $router->group(['middleware' => 'auth'], function () use ($router) {
        $router->get('me', 'AboutController@index');
        $router->get('home', 'HomeController@index');

        $router->get('club', 'ClubController@index');
        $router->post('club', 'ClubController@update');
        $router->get('club/{id}', 'ClubController@show');

        $router->get('tournament', 'TournamentController@index');
        $router->get('competition_status', 'TournamentController@status');

        $router->get('logout', 'AuthController@logout');
    });
});  