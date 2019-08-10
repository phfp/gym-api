<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Endereco extends Model
{
    public function academias()
    {
        return $this->belongsTo('App\Academia');
    }

    public function cidades()
    {
        return $this->belongsTo('App\Cidade');
    }
}
