<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Grupo_exercicio extends Model
{
    public function exercicios()
    {
        return $this->hasMany('App\Exercicio');
    }
}
