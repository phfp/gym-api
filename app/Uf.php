<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Uf extends Model
{
    public function Cidades()
    {
        return $this->hasMany('App\Cidade');
    }
}