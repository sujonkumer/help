<?php

use Illuminate\Database\Seeder;

class FireServiceSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('fire_services')->insert([
            'fire_service_name' => 'নাটোর ফায়ার ষ্টেশন ',
            'fire_service_number' => '0173000২৫১৭',
            'fire_service_location' => 'নাটোর সদর, নাটোর',
        ]);

        DB::table('fire_services')->insert([
            'fire_service_name' => ' সিদ্দিক বাজার ফায়ার ষ্টেশন ',
            'fire_service_number' => '01730002210',
            'fire_service_location' => 'সিদ্দিক বাজার, ঢাকা',
        ]);

        DB::table('fire_services')->insert([
            'fire_service_name' => ' সদরঘাট ফায়ার ষ্টেশন ',
            'fire_service_number' => '+৮৮০২৯৫৩৪৪৩৩',
            'fire_service_location' => 'সদরঘাট, ঢাকা',
        ]);

        DB::table('fire_services')->insert([
            'fire_service_name' => ' সদরঘাট নদী ফায়ার ষ্টেশন ',
            'fire_service_number' => '+৮৮০৭৪৫৪০৫৫',
            'fire_service_location' => 'সদরঘাট নদী, ঢাকা',
        ]);

        DB::table('fire_services')->insert([
            'fire_service_name' => ' পোস্তগোলা ফায়ার ষ্টেশন ',
            'fire_service_number' => '০১৭৩০০০২১১৬',
            'fire_service_location' => 'পোস্তগোলা, ঢাকা',
        ]);

        DB::table('fire_services')->insert([
            'fire_service_name' => ' লালবাগ ফায়ার ষ্টেশন ',
            'fire_service_number' => '০১৭৩০০০২১৮২',
            'fire_service_location' => 'লালবাগ, ঢাকা',
        ]);

        DB::table('fire_services')->insert([
            'fire_service_name' => ' পলাশী ফায়ার ষ্টেশন ',
            'fire_service_number' => '০১৭৩০০০২২১৯',
            'fire_service_location' => 'পলাশী, ঢাকা',
        ]);

        DB::table('fire_services')->insert([
            'fire_service_name' => ' খিগাঁও ফায়ার ষ্টেশন ',
            'fire_service_number' => '০১৭৩০০০২২২৫',
            'fire_service_location' => 'খিগাঁও, ঢাকা',
        ]);

        DB::table('fire_services')->insert([
            'fire_service_name' => ' তেজগাঁও ফায়ার ষ্টেশন ',
            'fire_service_number' => '০১৭৩০০০২২২৬',
            'fire_service_location' => 'তেজগাঁও, ঢাকা',
        ]);

        DB::table('fire_services')->insert([
            'fire_service_name' => ' মোহাম্মাদপুর ফায়ার ষ্টেশন ',
            'fire_service_number' => '০১৭৩০০০২২২৭',
            'fire_service_location' => 'মোহাম্মাদপুর, ঢাকা',
        ]);

        DB::table('fire_services')->insert([
            'fire_service_name' => ' মিরপুর ফায়ার ষ্টেশন ',
            'fire_service_number' => '০১৭৩০০০২২২৯',
            'fire_service_location' => 'মিরপুর, ঢাকা',
        ]);

        DB::table('fire_services')->insert([
            'fire_service_name' => ' কু্র্মিটোলা ফায়ার ষ্টেশন ',
            'fire_service_number' => '০১৭৩০০০২২৩২',
            'fire_service_location' => 'কু্র্মিটোলা, ঢাকা',
        ]);

        DB::table('fire_services')->insert([
            'fire_service_name' => ' উত্তরা ফায়ার ষ্টেশন ',
            'fire_service_number' => '০১৭৩০০০২২২৯',
            'fire_service_location' => 'উত্তরা, ঢাকা',
        ]);
    }
}
