<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Cota extends Model
{
    public function academias()
    {
        return $this->belongsTo('App\Academia');
    }

    public function user()
    {
        return $this->belongsTo('App\User');
    }

    public function avaliacao_fisicas()
    {
        return $this->belongsTo('App\Avaliacao_fisica');
    }

    public function treino_atletas()
    {
        return $this->belongsTo('App\Treino_atleta');
    }
}
