<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Exercicio extends Model
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


    public function lista_exercicios()
    {
        return $this->hasMany('App\Lista_exercicio');
    }

    public function grupo_exercicios()
    {
        return $this->belongsTo('App\Grupo_exercicio');
    }
}
