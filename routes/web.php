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

// $router->post('image', 'ExampleController@index');

$router->group(['prefix' => 'api'], function () use ($router) {
    $router->get('test', function () {
        // return 'hello';
        return hash('sha512','135408641020040000SB-Mid-server-W7z9vubSaxwaediNUh7j596i');
    });
    $router->post('register', 'AuthController@register');
    $router->post('login', 'AuthController@login');
    $router->get('refresh', 'AuthController@refresh');

    $router->group(['middleware' => 'auth'], function () use ($router) {
        $router->get('about/summary', 'AboutController@index');
        $router->get('about/detail', 'AboutController@detail');
        
        $router->post('profile', 'AboutController@update_profile');
        $router->get('home', 'HomeController@index');
        $router->get('notification', 'NotificationController@index');

            $router->group(['middleware' => 'checkPayment'], function () use ($router) {
                $router->post('kelas', 'KelasController@index');
    
                $router->get('club', 'ClubController@index');
                $router->post('choose_kelas', 'ClubController@update');
                $router->get('club/{id}', 'ClubController@show');
    
                $router->group(['middleware' => 'checkKelas'], function () use ($router) {
                    $router->get('tournament', 'TournamentController@index');
                    $router->get('competition_status', 'TournamentController@status');
                    $router->get('schedule', 'ScheduleController@index');
                    $router->post('resign', 'ClubController@school_resign');
                });
                
                $router->get('history', 'ClubController@history');
            });


        $router->get('payment', 'PaymentController@index');
        
        $router->get('logout', 'AuthController@logout');
    });

    $router->post('notification', 'PaymentController@notification');
    
    $router->get('activation/student/{token}', ['as' => 'activation.student', 'uses' => 'AuthController@student_activation']);
    // $router->get('activation/student/{token}', 'AuthController@student_activation')->name('activation.student');
// Route::get('/aktivasi/student/{token}', 'Auth\RegisterController@ActivationStudent')->name('activation.student');

});  