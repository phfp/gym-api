<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Exercicio;

class ExercicioController extends Controller
{
    function exercicios(){
        $exercicios = Exercicio::all();
        return $exercicios;
    }
}
