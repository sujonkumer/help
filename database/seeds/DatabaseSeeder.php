<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // $this->call(UsersTableSeeder::class);
         $this->call(HospitalAndAmpulance::class);
         $this->call(DiseaseMedicine::class);
         $this->call(FbBloodGroup::class);
         $this->call(UserSeeder::class);
         $this->call(FireServiceSeeder::class);
         $this->call(GovtWebsiteServiceSeeder::class);
         $this->call(ThanaServiceSeeder::class);
         $this->call(BusCounter::class);

    }
}
