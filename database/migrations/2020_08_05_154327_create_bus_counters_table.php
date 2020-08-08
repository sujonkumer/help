<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateBusCountersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('bus_counters', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('counter_name')->nullable();
            $table->string('counter_mobile')->nullable();
            $table->string('counter_location')->nullable();
            $table->enum('country', ['bangladesh','india','america'])->nullable();
            $table->tinyInteger('status')->nullable();

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
        Schema::dropIfExists('bus_counters');
    }
}
