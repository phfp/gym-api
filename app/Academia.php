<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Academia extends Model
{
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'cnpj', 'nome', 'user_id'
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */

    public function user()
    {
        return $this->belongsTo('App\User');
    }

    public function enderecos()
    {
        return $this->belongsTo('App\Endereco');
    }

    public function cotas()
    {
        return $this->hasMany('App\Cota');
    }
}
