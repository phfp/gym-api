<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Validation\Rule;
use App\Exercicio;

class ExercicioController extends Controller
{
    function exercicios(){
        $exercicios = Exercicio::all();
        return $exercicios;
    }

    function cadastroExercicios(Request $request) {

        $data = $request->all();

        $exercicio = Exercicio::create([
            'descricao' => $data['descricao'],
            'grupo_exercicio_id' => $data['grupo_exercicio_id'],
            'imagem' => $data['imagem']
        ]);

        return $exercicio;
    }
}
