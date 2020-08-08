<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateDiseaseMedicinesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('disease_medicines', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('disease_name')->nullable();
            $table->text('disease_medicine')->nullable();
			$table->text('dosage_and_usage_rules', 100)->nullable();
            $table->tinyInteger('status');
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
        Schema::dropIfExists('disease_medicines');
    }
}
