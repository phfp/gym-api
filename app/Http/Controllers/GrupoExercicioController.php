<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Grupo_exercicio;

class GrupoExercicioController extends Controller
{
    function grupoExercicios(){
        $grupos = Grupo_exercicio::all();
        return $grupos;
    }
}