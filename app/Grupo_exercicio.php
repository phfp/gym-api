<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Grupo_exercicio extends Model
{

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'descricao', 'imagem', 'grupo_exercicio_id'
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */


    public function exercicios()
    {
        return $this->hasMany('App\Exercicio');
    }
}
