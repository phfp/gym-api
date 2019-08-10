<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Cidade extends Model
{
    public function enderecos()
    {
        return $this->hasMany('App\Endereco');
    }

    public function ufs()
    {
        return $this->belongsTo('App\Uf');
    }
}
