<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateHospitalSupportsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('hospital_supports', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('name');
            $table->string('hospital_mobile')->nullable();
            $table->string('ambulance_contact')->nullable();
            $table->string('location');
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
        Schema::dropIfExists('hospital_supports');
    }
}
