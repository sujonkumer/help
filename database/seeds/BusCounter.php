<?php

use Illuminate\Database\Seeder;

class BusCounter extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {



        DB::table('bus_counters')->insert([
            'counter_name' => 'হানিফ এন্টারপ্রিইজ',
            'counter_mobile' => '02-8011759',
            'counter_location' => 'Gabtoli,Dhaka',
            'country' => 'bangladesh',
            'status' => '0',
        ]);

        DB::table('bus_counters')->insert([
            'counter_name' => ' হানিফ এন্টারপ্রিইজ ',
            'counter_mobile' => ' ০২-৯০০৮৪৭৫',
            'counter_location' => 'Tachnical, Dhaka',
            'country' => 'bangladesh',
            'status' => '0',
        ]);

        DB::table('bus_counters')->insert([
            'counter_name' => ' হানিফ এন্টারপ্রিইজ',
            'counter_mobile' => ' 02-9008498',
            'counter_location' => 'kollanpur, Dhaka',
            'country' => 'bangladesh',
            'status' => '0',
        ]);

        DB::table('bus_counters')->insert([
            'counter_name' => ' হানিফ এন্টারপ্রিইজ',
            'counter_mobile' => '02-8123439 ',
            'counter_location' => 'Shmoli, Dhaka',
            'country' => 'bangladesh',
            'status' => '0',
        ]);

        DB::table('bus_counters')->insert([
            'counter_name' => 'হানিফ এন্টারপ্রিইজ',
            'counter_mobile' => '02=8119901',
            'counter_location' => 'kolabagan, Dhaka',
            'country' => 'bangladesh',
            'status' => '0',
        ]);

        DB::table('bus_counters')->insert([
            'counter_name' => ' হানিফ এন্টারপ্রিইজ',
            'counter_mobile' => ' 02-8354748',
            'counter_location' => 'malibag, Dhaka',
            'country' => 'bangladesh',
            'status' => '0',
        ]);

        DB::table('bus_counters')->insert([
            'counter_name' => ' হানিফ এন্টারপ্রিইজ',
            'counter_mobile' => ' 02-8313869',
            'counter_location' => 'fokirapur, Dhaka',
            'country' => 'bangladesh',
            'status' => '0',
        ]);

        DB::table('bus_counters')->insert([
            'counter_name' => ' হানিফ এন্টারপ্রিইজ',
            'counter_mobile' => ' 02-71022007',
            'counter_location' => 'arambag, Dhaka',
            'country' => 'bangladesh',
            'status' => '0',
        ]);

        DB::table('bus_counters')->insert([
            'counter_name' => ' হানিফ এন্টারপ্রিইজ',
            'counter_mobile' => '01713049559 ',
            'counter_location' => 'saidarbad, Dhaka',
            'country' => 'bangladesh',
            'status' => '0',
        ]);


        DB::table('bus_counters')->insert([
            'counter_name' => ' হানিফ এন্টারপ্রিইজ',
            'counter_mobile' => ' 01785408234 (Demo)',
            'counter_location' => 'Sherpur, Bogura',
            'country' => 'bangladesh',
            'status' => '0',
        ]);

        DB::table('bus_counters')->insert([
            'counter_name' => ' হানিফ এন্টারপ্রিইজ',
            'counter_mobile' => ' 01785408235 (Demo)',
            'counter_location' => 'Bogura',
            'country' => 'bangladesh',
            'status' => '0',
        ]);

        DB::table('bus_counters')->insert([
            'counter_name' => 'হানিফ এন্টারপ্রিইজ',
            'counter_mobile' => '01785408233 (Demo Number)',
            'counter_location' => 'Natore',
            'country' => 'bangladesh',
            'status' => '0',
        ]);


    }
}
