<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddTreinoAtletaIdTableListaExercicios extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('lista_exercicios', function (Blueprint $table) {
            $table->unsignedBigInteger('treino_atleta_id');
            $table->foreign('treino_atleta_id')->references('id')->on('treino_atletas')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('lista_exercicios', function (Blueprint $table) {
            //
        });
    }
}
