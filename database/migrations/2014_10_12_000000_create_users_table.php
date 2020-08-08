<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('users', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('name');
            $table->enum('country', ['bangladesh','india','america'])->nullable();
            $table->string('email')->unique();
            $table->string('mobile')->nullable();
            $table->enum('blood_group', ['a+','a-','b+','b-','ab+','ab-','o+','o-'])->nullable();
            $table->enum('district', ['Bagerhat','Bandarban','Barguna','Barisal','Bhola','Bogra','Brahmanbaria','Chandpur','Chapainababganj','Chittagong','Chuadanga','Comilla','Coxs Bazar','Dhaka','Dinajpur','Faridpur','Feni','Gaibandha','Gazipur','Gopalganj','Habiganj','Jamalpur','Jessore','Jhalokati','Jhenaidah','Joypurhat','Khagrachhari','Khulna','Kishoregonj','Kurigram','Kushtia','Lakshmipur','Lalmonirhat','Madaripur','Magura','Manikganj','Maulvibazar','Meherpur','Munshiganj','Mymenshingh','Naogaon','Narail','Narayanganj','Narshindi','Natore','Netrakona','Nilphamari','Noakhali','Pabna','Panchagarh','Patuakhali','Pirojpur','Rajbari','Rajshahi','Rangamati','Rangpur','Shariatpur','Shatkhira','Sherpur','Sirajganj','Sunamganj','Sylhet','Tangail','Thakurgaon'])->nullable();
            $table->string('city')->nullable();
            $table->string('thana')->nullable();
            $table->string('area')->nullable();
            $table->string('last_donate_time')->nullable();
            $table->string('state')->nullable();
            $table->string('address')->nullable();
            $table->tinyInteger('status')->nullable();
            $table->string('profile_picture')->nullable();
            $table->enum('type', ['doner','admin', 'user']);
            $table->timestamp('mobile_verified_at')->nullable();
            $table->timestamp('email_verified_at')->nullable();
            $table->string('password');
            $table->rememberToken();
            $table->timestamps();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('users');
    }
}
