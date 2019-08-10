<?php

use Illuminate\Http\Request;
use App\User;
use App\Academia;
use App\Tipo_usuario;
use App\Cota;
use App\Exercicio;
use App\Lista_exercicio;
use App\Treino_atleta;

use Illuminate\Support\Facades\Validator;

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

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::post('/cadastro', function (Request $request) {
    $data = $request->all();
    
    $validacao = Validator::make($data, [
        'name' => ['required', 'string', 'max:255'],
        'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
        'password' => ['required', 'string', 'min:6', 'confirmed'],
    ]);

    if($validacao->fails()){
        return $validacao->errors();
    }
    $user = User::create([
        'name' => $data['name'],
        'email' => $data['email'],
        'tipo_usuario_id' => $data['tipo_usuario_id'],
        'password' => Hash::make($data['password']),
    ]);

    $user->token = $user->createToken($user->email)->accessToken;
    return $user;   
});

Route::get('/testes', function(){
    $treino = Treino_atleta::find(7);
    return $treino;
    
});