<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateAvaliacaoFisicasTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('avaliacao_fisicas', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->unsignedBigInteger('cota_id');
            $table->foreign('cota_id')->references('id')->on('cotas')->onDelete('cascade');
            $table->integer('idade');
            $table->longText('observacoes');

            $table->longText('anamnese_b_1')->nullable();
            $table->longText('anamnese_b_2')->nullable();
            $table->longText('anamnese_b_3')->nullable();
            $table->longText('anamnese_b_4')->nullable();
            $table->longText('anamnese_b_5')->nullable();
            $table->longText('resposta_anamnese_b_1')->nullable();
            $table->longText('resposta_anamnese_b_2')->nullable();
            $table->longText('resposta_anamnese_b_3')->nullable();
            $table->longText('resposta_anamnese_b_4')->nullable();
            $table->longText('resposta_anamnese_b_5')->nullable();
            $table->longText('anamnese_c_1')->nullable();
            $table->longText('anamnese_c_2')->nullable();
            $table->longText('anamnese_c_3')->nullable();
            $table->longText('anamnese_c_4')->nullable();
            $table->longText('Resposta_anamnese_c_1')->nullable();
            $table->longText('Resposta_anamnese_c_2')->nullable();
            $table->longText('Resposta_anamnese_c_3')->nullable();
            $table->longText('Resposta_anamnese_c_4')->nullable();

            $table->float('massa_corporal', 8, 2)->nullable();
            $table->float('estatura', 8, 2)->nullable();
            $table->float('pescoco', 8, 2)->nullable();
            $table->float('ombro', 8, 2)->nullable();
            $table->float('torax', 8, 2)->nullable();
            $table->float('cintura', 8, 2)->nullable();
            $table->float('abdomen', 8, 2)->nullable();
            $table->float('quadril', 8, 2)->nullable();

            $table->float('braco_direito', 8, 2)->nullable();
            $table->float('antebraco_direito', 8, 2)->nullable();
            $table->float('coxa_direito', 8, 2)->nullable();
            $table->float('panturrilha_direito', 8, 2)->nullable();

            $table->float('braco_esquerda', 8, 2)->nullable();
            $table->float('antebraco_esquerda', 8, 2)->nullable();
            $table->float('coxa_esquerda', 8, 2)->nullable();
            $table->float('panturrilha_esquerda', 8, 2)->nullable();

            $table->float('dobra_tricipital', 8, 2)->nullable();
            $table->float('dobra_bicipital', 8, 2)->nullable();
            $table->float('dobra_peitoral', 8, 2)->nullable();
            $table->float('dobra_subescapular', 8, 2)->nullable();
            $table->float('dobra_axilar_media', 8, 2)->nullable();
            $table->float('dobra_supraliaca', 8, 2)->nullable();
            $table->float('dobra_abdominal', 8, 2)->nullable();
            $table->float('dobra_coxa', 8, 2)->nullable();
            $table->float('dobra_panturrilha', 8, 2)->nullable();
            
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
        Schema::dropIfExists('avaliacao_fisicas');
    }
}
