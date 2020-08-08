<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateFireServicesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('fire_services', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('fire_service_name')->nullable();
            $table->string('fire_service_number')->nullable();
            $table->string('fire_service_location')->nullable();
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
        Schema::dropIfExists('fire_services');
    }
}
