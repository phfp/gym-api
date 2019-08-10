<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Exercicio extends Model
{
    public function lista_exercicios()
    {
        return $this->hasMany('App\Lista_exercicio');
    }

    public function grupo_exercicios()
    {
        return $this->belongsTo('App\Grupo_exercicio');
    }
}
