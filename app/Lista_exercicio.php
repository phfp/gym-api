<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Lista_exercicio extends Model
{
    public function exercicios()
    {
        return $this->belongsTo('App\Exercicio');
    }

    public function treino_altletas()
    {
        return $this->belongsTo('App\Treino_atleta');
    }

    public function dia_treinos()
    {
        return $this->belongsTo('App\Dia_treino');
    }
}
