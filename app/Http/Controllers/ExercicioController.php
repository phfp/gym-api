<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Validation\Rule;
use App\Exercicio;

class ExercicioController extends Controller
{
    function exercicios(){
        $exercicios = Exercicio::all();

        foreach ($exercicios as &$exercicio) {
            $exercicio->imagem = asset($exercicio->imagem);
        }

        return $exercicios;
    }

    public function exercicio($id){
        $exercicio = Exercicio::find($id);
        $exercicio->imagem = asset($exercicio->imagem);
        return $exercicio;
    }

    function cadastroExercicios(Request $request) {

        $data = $request->all();

        Validator::extend('base64image', function($attribute, $value, $parameters, $validator){
            $explode = explode(',', $value);
            $allow = ['png', 'jpg', 'svg', 'jpeg'];
            $format = str_replace(
                [
                    'data:image/',
                    ';',
                    'base64',
                ],
                [
                    '', '', '',
                ],
                $explode[0]
            );

            if(!in_array($format, $allow)){
                return false;
            }

            if(!preg_match('%^[a-zA-Z0-9/+]*={0,2}$%', $explode[1])){
                return false;
            }
            return true;
        });


        $validacao = Validator::make($data, [
            'imagem' => 'base64image',
            'descricao' => ['required', 'string'],
            'grupo_exercicio_id' => ['required'],
        ], ['base64image' => 'Imagem inválida!']);

        if($validacao->fails()){
            return $validacao->errors();
        }


        $time = time();
        $diretorioPai = 'exercicios';
        $diretorioImagem = $diretorioPai.DIRECTORY_SEPARATOR.'grupo'.$data['grupo_exercicio_id'];
        $ext = substr($data['imagem'], 11, strpos($data['imagem'], ';') - 11);
        $urlImagem = $diretorioImagem.DIRECTORY_SEPARATOR.$time.'.'.$ext;

        $file = str_replace('data:image/'.$ext.';base64,','',$data['imagem']);
        $file = base64_decode($file);

        if(!file_exists($diretorioPai)){
            mkdir($diretorioPai,0700);
        }

        if(!file_exists($diretorioImagem)){
            mkdir($diretorioImagem,0700);
        }

        if(file_exists($data['imagem'])){
            unlink($data['imagem']);
        }

        file_put_contents($urlImagem,$file);
        
        $data['imagem'] = $urlImagem;
        
        $exercicio = Exercicio::create([
            'descricao' => $data['descricao'],
            'grupo_exercicio_id' => $data['grupo_exercicio_id'],
            'imagem' => $data['imagem'],
        ]);        

        return ['img'=>true];
    }
}
