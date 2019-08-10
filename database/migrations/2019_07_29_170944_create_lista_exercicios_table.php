<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateListaExerciciosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('lista_exercicios', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->unsignedBigInteger('cota_id');
            $table->foreign('cota_id')->references('id')->on('cotas')->onDelete('cascade');
            $table->unsignedBigInteger('exercicio_id');
            $table->foreign('exercicio_id')->references('id')->on('exercicios')->onDelete('cascade');
            $table->unsignedBigInteger('dia_treino_id');
            $table->foreign('dia_treino_id')->references('id')->on('dia_treinos')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('lista_exercicios');
    }
}
