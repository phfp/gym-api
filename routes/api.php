<?php

use Illuminate\Http\Request;
use App\User;
use App\Exercicio;
use App\Grupo_exercicio;
use Illuminate\Support\Facades\Validator;
use Illuminate\Validation\Rule;
/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::post('cadastro', "UsuarioController@cadastro");
Route::post('login', "UsuarioController@login");
Route::middleware('auth:api')->put('/perfil', "UsuarioController@perfil");
Route::middleware('auth:api')->get('/usuario', "UsuarioController@usuario" );
Route::get('exercicios', "ExercicioController@exercicios");
Route::get('exercicio/{{id}}', "ExercicioController@exercicio");
Route::get('grupoexercicios', "GrupoExercicioController@grupoExercicios");
Route::post('cadastroexercicios', "ExercicioController@cadastroExercicios");
