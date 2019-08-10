<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Dia_treino extends Model
{
    public function Lista_exercicios()
    {
        return $this->hasMany('App\Lista_exercicio');
    }
}
