<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTreinoAtletasTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('treino_atletas', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->unsignedBigInteger('treino_id');
            $table->foreign('treino_id')->references('id')->on('treinos')->onDelete('cascade');
            $table->unsignedBigInteger('cota_id');
            $table->foreign('cota_id')->references('id')->on('cotas')->onDelete('cascade');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('treino_atletas');
    }
}
