<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the Closure to execute when that URI is requested.
|
*/
//=====================home==================
Route::get('/', function()
                    {
                        return View::make('home.home');
                    });
//===================listar medico=============
Route::get('home/medico', 'MedicoController@listarMedico');               
//===================arbitros=============
Route::get('arbitros/ver', 'ArbitroController@index');   
                    
                    
                    
//===================pruebas====================                    
//Route::get('/', 'PanelController@mostrarPanel');

//Route::get('home/medico','pruebacontroller@index');
//listar


Route::group(array('prefix'=>'admin'), function(){
	Route::resource('panel','PanelController');
	Route::resource('usuario','UsuarioController');

	Route::get('/','PanelController@index');
});
