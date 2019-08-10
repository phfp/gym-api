<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Treino_atleta extends Model
{
    public function cotas()
    {
        return $this->belongsTo('App\Cota');
    }

    public function lista_exercicios()
    {
        return $this->hasMany('App\Lista_exercicio');
    }
}
