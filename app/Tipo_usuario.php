<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Tipo_usuario extends Model
{
    public function user()
    {
        return $this->hasMany('App\User');
    }
}
