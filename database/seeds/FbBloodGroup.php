<?php

use Illuminate\Database\Seeder;

class FbBloodGroup extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {




        DB::table('f_b_blood_groups')->insert([
            'blood_group_name' => 'O - blood group',
            'blood_group_link' => 'https://web.facebook.com/O-blood-group-399391460217509/',
            'status' => '0',
        ]);



        DB::table('f_b_blood_groups')->insert([
            'blood_group_name' => 'Barisal Blood Donors Club (BBDC)',
            'blood_group_link' => 'https://web.facebook.com/groups/BBDCaid/',
            'status' => '0',
        ]);

        DB::table('f_b_blood_groups')->insert([
            'blood_group_name' => 'O+ Blood Group',
            'blood_group_link' => 'https://web.facebook.com/LuckyBloodDonners/',
            'status' => '0',
        ]);

        DB::table('f_b_blood_groups')->insert([
            'blood_group_name' => 'AB+ve Blood group',
            'blood_group_link' => 'https://web.facebook.com/ABve-Blood-group-212980905487115/',
            'status' => '0',
        ]);

        DB::table('f_b_blood_groups')->insert([
            'blood_group_name' => 'BloodGroup Jessore',
            'blood_group_link' => 'https://web.facebook.com/bloodgroup.jessore',
            'status' => '0',
        ]);

        DB::table('f_b_blood_groups')->insert([
            'blood_group_name' => 'ইউনাইটেড ব্লাড গ্রুপ সিলেট',
            'blood_group_link' => 'https://web.facebook.com/united.blood.group',
            'status' => '0',
        ]);

        DB::table('f_b_blood_groups')->insert([
            'blood_group_name' => 'Evergreen Bangladesh',
            'blood_group_link' => 'https://web.facebook.com/groups/evergreenbd64/',
            'status' => '0',
        ]);
        DB::table('f_b_blood_groups')->insert([
            'blood_group_name' => 'Progress help aid foundation Bangladesh',
            'blood_group_link' => 'https://web.facebook.com/fenihelpassociation',
            'status' => '0',
        ]);

        DB::table('f_b_blood_groups')->insert([
            'blood_group_name' => 'Blood donation club Bogura',
            'blood_group_link' => 'https://web.facebook.com/Blood-donation-club-Bogura-193772181182638/',
            'status' => '0',
        ]);
        DB::table('f_b_blood_groups')->insert([
            'blood_group_name' => 'Manobik Blood Donors',
            'blood_group_link' => 'https://web.facebook.com/manobikblood/',
            'status' => '0',
        ]);


        DB::table('f_b_blood_groups')->insert([
            'blood_group_name' => 'স্বেচ্ছায় রক্তদান ব্লাড ফাউন্ডেশন',
            'blood_group_link' => 'https://web.facebook.com/groups/400712800345551/',
            'status' => '0',
        ]);
        DB::table('f_b_blood_groups')->insert([
            'blood_group_name' => 'Blood Fighters(রক্ত সৈনিক)',
            'blood_group_link' => 'https://web.facebook.com/groups/BloodFighters/',
            'status' => '0',
        ]);

        DB::table('f_b_blood_groups')->insert([
            'blood_group_name' => 'সুকাশ ব্লাডব্যাংক',
            'blood_group_link' => 'https://web.facebook.com/profile.php?id=100044295352122',
            'status' => '0',
        ]);

        DB::table('f_b_blood_groups')->insert([
            'blood_group_name' => 'সেচ্ছা লাইফ কেয়ার',
            'blood_group_link' => 'https://www.facebook.com/groups/1049931458672504/?ref=share',
            'status' => '0',
        ]);
        DB::table('f_b_blood_groups')->insert([
            'blood_group_name' => 'আশার আলো সমাজকল্যান ফাউন্ডেশন',
            'blood_group_link' => 'https://www.facebook.com/groups/284527281972211/?ref=share',
            'status' => '0',
        ]);






    }
}
