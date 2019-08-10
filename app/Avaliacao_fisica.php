<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Avaliacao_fisica extends Model
{
    public function cotas()
    {
        return $this->belongsTo('App\Cota');
    }
}
