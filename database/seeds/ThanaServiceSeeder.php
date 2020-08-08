<?php

use Illuminate\Database\Seeder;

class ThanaServiceSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('thana_services')->insert([
            'thana_name' => 'সিংড়া থানা ওসি',
            'thana_number' => '০১৭১৩১৭৩৮৫৮',
            'thana_location' => 'সিংড়া, নাটোর',
        ]);

        DB::table('thana_services')->insert([
            'thana_name' => 'সাভার থানা ওসি',
            'thana_number' => '০১৭১৩৩৭৩৩২৭',
            'thana_location' => 'সাভার, ঢাকা',
        ]);

        DB::table('thana_services')->insert([
            'thana_name' => 'ধামরাই থানা ওসি',
            'thana_number' => '০১৭১৩৩৭৩৩২৮',
            'thana_location' => 'ধামরাই, ঢাকা',
        ]);

        DB::table('thana_services')->insert([
            'thana_name' => ' কেরানীগঞ্জ থানা ওসি',
            'thana_number' => '০১৭১৩৩৭৩৩২৯',
            'thana_location' => 'কেরানীগঞ্জ, ঢাকা',
        ]);

        DB::table('thana_services')->insert([
            'thana_name' => ' নবাবগঞ্জ থানা ওসি',
            'thana_number' => '০১৭১৩৩৭৩৩৩০',
            'thana_location' => 'নবাবগঞ্জ, ঢাকা',
        ]);

        DB::table('thana_services')->insert([
            'thana_name' => 'দোহার থানা ওসি',
            'thana_number' => '০১৭১৩৩৭৩৩৩১',
            'thana_location' => 'দোহার, ঢাকা',
        ]);

        DB::table('thana_services')->insert([
            'thana_name' => ' আশুলিয়া থানা ওসি',
            'thana_number' => '০১৭১৩৩৭৩৩৩২',
            'thana_location' => 'আশুলিয়া, ঢাকা',
        ]);

        DB::table('thana_services')->insert([
            'thana_name' => ' দক্ষিণ কেরানীগঞ্জ থানা ওসি',
            'thana_number' => '০১৭১৩৩৭৩৩৩৩',
            'thana_location' => 'দক্ষিণ কেরানীগঞ্জ, ঢাকা',
        ]);

        DB::table('thana_services')->insert([
            'thana_name' => ' নারায়নগঞ্জ থানা ওসি',
            'thana_number' => '০১৭১৩৩৭৩৩৫৪',
            'thana_location' => 'নারায়নগঞ্জ, ঢাকা',
        ]);

        DB::table('thana_services')->insert([
            'thana_name' => 'ফতুল্লা থানা ওসি',
            'thana_number' => '০১৭১৩৩৭৩৪৬',
            'thana_location' => 'ফতুল্লা, ঢাকা',
        ]);

        DB::table('thana_services')->insert([
            'thana_name' => ' বন্দর থানা ওসি',
            'thana_number' => '০১৭১৩৩৭৩৩৪৭',
            'thana_location' => 'বন্দর, ঢাকা',
        ]);

        DB::table('thana_services')->insert([
            'thana_name' => ' সিদ্দিরগঞ্জ থানা ওসি',
            'thana_number' => '০১৭১৩৩৭৩৩৪৮',
            'thana_location' => 'সিদ্দিরগঞ্জ, ঢাকা',
        ]);
    }
}
