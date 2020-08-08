<?php

use Illuminate\Database\Seeder;

class HospitalAndAmpulance extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {

        DB::table('hospital_supports')->insert([
            'name' => 'Popular Diagnostic Center Ltd.',
            'ambulance_contact' => '05169500 , 01569501, 01569502, 01569503',
            'location' => ' Thontonia,Bogura Sadar, Bogura',
            'status' => '0',
        ]);

        DB::table('hospital_supports')->insert([
            'name' => 'Anjuman-E-Mofidul Islam Hospital',
            'hospital_mobile' => '9336611',
            'ambulance_contact' => '',
            'location' => 'Dhaka',
            'status' => '0',
        ]);

        DB::table('hospital_supports')->insert([
            'name' => 'Care Madical Center Ltd.',
            'hospital_mobile' => '8318827',
            'ambulance_contact' => '',
            'location' => 'Chamelibagh, Shantinagar',
            'status' => '0',
        ]);

        DB::table('hospital_supports')->insert([
            'name' => 'CMH (Dhaka Cantonment Hospital)',
            'hospital_mobile' => '882770',
            'ambulance_contact' => '',
            'location' => 'Dhaka Cantonment',
            'status' => '0',
        ]);

        DB::table('hospital_supports')->insert([
            'name' => 'Community Maternity Hospital',
            'hospital_mobile' => '9358513',
            'ambulance_contact' => '',
            'location' => '22,Bijay Nagar, Dhaka',
            'status' => '0',
        ]);

        DB::table('hospital_supports')->insert([
            'name' => 'Dhaka General Hospital Ltd.',
            'hospital_mobile' => '7115351',
            'ambulance_contact' => '',
            'location' => '17, Hatkhola Road, Dhaka',
            'status' => '0',
        ]);

        DB::table('hospital_supports')->insert([
            'name' => 'Doctors General Hospital.',
            'hospital_mobile' => '7410731',
            'ambulance_contact' => '',
            'location' => '31/32,DIT Industrial Area, Postagola, Dhaka',
            'status' => '0',
        ]);

        DB::table('hospital_supports')->insert([
            'name' => 'Centrt For The Rehabilitation of the paralysed (Crp)',
            'hospital_mobile' => '7711766',
            'ambulance_contact' => '',
            'location' => 'Post CRP Chapin,Savar, Dhaka',
            'status' => '0',
        ]);

        DB::table('hospital_supports')->insert([
            'name' => 'Sir Salimullah Medical College',
            'hospital_mobile' => '57315076',
            'ambulance_contact' => '',
            'location' => 'Mitford Road, Dhaka-1100',
            'status' => '0',
        ]);

        DB::table('hospital_supports')->insert([
            'name' => 'আহমেদ মেডিকেল সেন্টের',
            'hospital_mobile' =>'8113628',
            'ambulance_contact' => '',
            'location' => 'বাড়ি#৭১, রোড#১৫/এ নিঊ ধানমুন্ডি সি/এ, ঢাকা',
            'status' => '0',
        ]);

        DB::table('hospital_supports')->insert([
            'name' => 'আল এনায়েত আধুনিক হাসপাতাল',
            'hospital_mobile'=> '8631619',
            'ambulance_contact' => '',
            'location' => 'হাউজ#৩৬,রোড#৩, ধানমুন্ডি, ঢাকা',
            'status' => '0',
        ]);

        DB::table('hospital_supports')->insert([
            'name' => 'আল জাবেল-ই নূর হার্ট লি.',
            'hospital_mobile'=> '8117031',
            'ambulance_contact' => '',
            'location' => 'হাউজ#21, রোড#৯/এ, ধানমুন্ডি, ঢাকা',
            'status' => '0',
        ]);

        DB::table('hospital_supports')->insert([
            'name' => 'Bangladesh Heart & Chest Hospital',
            'hospital_mobile'=> '9114266 or 8123977',
            'ambulance_contact' => '',
            'location' => 'Road#27 (Old), 16 (New), House#47,Dhanmondi, Dhaka',
            'status' => '0',
        ]);

        DB::table('hospital_supports')->insert([
            'name' => 'Bangladesh Medical College',
            'hospital_mobile'=> '9118202 or 8115843',
            'ambulance_contact' => '',
            'location' => 'House#35, Road#14/A, Dhanmondi, Dhaka',
            'status' => '0',
        ]);

        DB::table('hospital_supports')->insert([
            'name' => 'Bangladesh Telemedicine Service Ltd.',
            'hospital_mobile'=> '8124990 Ext 660, 284',
            'ambulance_contact' => '',
            'location' => 'Comfort Tower,167/B,Green Road,Dhanmondi,Dhaka',
            'status' => '0',
        ]);

        DB::table('hospital_supports')->insert([
            'name' => 'Bari-Llizarov ORthopedic (Bio) Center',
            'hospital_mobile'=> '9120309 or 8117876',
            'ambulance_contact' => '',
            'location' => 'House#77(New)831(Old),Road#9/A(New)19(Old),Dhanmondi,Dhaka',
            'status' => '0',
        ]);

        DB::table('hospital_supports')->insert([
            'name' => 'Bari-Llizarov ORthopedic Center',
            'hospital_mobile'=> '9120309 or 8117876',
            'ambulance_contact' => '',
            'location' => 'House#831,Road#19(Old),Dhanmondi,Dhaka',
            'status' => '0',
        ]);

        DB::table('hospital_supports')->insert([
            'name' => 'Central Hospital Ltd.',
            'hospital_mobile'=> '9660015-19',
            'ambulance_contact' => '',
            'location' => 'House#2,Road#5,Green Road,Dhanmondi,Dhaka',
            'status' => '0',
        ]);

        DB::table('hospital_supports')->insert([
            'name' => 'Crescent Gastroliver & General Hospital Ltd.',
            'hospital_mobile'=> '9116851',
            'ambulance_contact' => '',
            'location' => 'House-60,Road-8/A,Dhanmondi R/A ,Dhaka',
            'status' => '0',
        ]);

        DB::table('hospital_supports')->insert([
            'name' => 'Delta Medical Center Ltd.',
            'hospital_mobile'=> '8617141-3',
            'ambulance_contact' => '',
            'location' => 'House#20, Road#4,Dhanmundi R/A,Dhaka',
            'status' => '0',
        ]);

        DB::table('hospital_supports')->insert([
            'name' => 'Dhaka National Hospital Ltd.',
            'hospital_mobile'=> '8122588',
            'ambulance_contact' => '',
            'location' => 'House#55/1, Road#27(Old),16(New),Dhanmundi R/A,Dhaka',
            'status' => '0',
        ]);

        DB::table('hospital_supports')->insert([
            'name' => 'Dhanmundi Hospital (Pvt) Ltd.',
            'hospital_mobile'=> '8628849',
            'ambulance_contact' => '',
            'location' => 'House#19/E, Green Road, Middle of Road #6&7,Dhanmundi,Dhaka',
            'status' => '0',
        ]);

        DB::table('hospital_supports')->insert([
            'name' => 'Dr. Salahudding Hospital',
            'hospital_mobile'=> '9122264 or 9121779',
            'ambulance_contact' => '',
            'location' => 'House#37,Road#9/A,Dhanmundi R/A,Dhaka',
            'status' => '0',
        ]);

        DB::table('hospital_supports')->insert([
            'name' => 'Eden Malticare Hospital',
            'hospital_mobile'=> '8150507-10 or 8151506',
            'ambulance_contact' => '',
            'location' => '753,Satmajid Road,Dhanmundi R/A,Dhaka',
            'status' => '0',
        ]);

        DB::table('hospital_supports')->insert([
            'name' => 'General Hospital Ltd',
            'hospital_mobile'=> '81222471 or 9140442',
            'ambulance_contact' => '',
            'location' => 'Road#14(New),House#8/3,Dhanmundi R/A,Dhaka',
            'status' => '0',
        ]);

        DB::table('hospital_supports')->insert([
            'name' => 'Green Hospital',
            'hospital_mobile'=> '8612412',
            'ambulance_contact' => '',
            'location' => 'House#31,Road#6,Dhanmundi R/A,Dhaka',
            'status' => '0',
        ]);

        DB::table('hospital_supports')->insert([
            'name' => 'angla Nursing Home Ltd.',
            'hospital_mobile'=> '9114824',
            'ambulance_contact' => '',
            'location' => 'Lake Circus Kalabagan,Dhaka',
            'status' => '0',
        ]);

        DB::table('hospital_supports')->insert([
            'name' => 'Green Land Hospital',
            'hospital_mobile'=> '8914175',
            'ambulance_contact' => '',
            'location' => 'Azampur, Uttara,Dhaka',
            'status' => '0',
        ]);

        DB::table('hospital_supports')->insert([
            'name' => 'Crescent Hospital & Diagnostic Complex Ltd.',
            'hospital_mobile'=> '9117524 of 8119775',
            'ambulance_contact' => '',
            'location' => '22/2, Babor Road,Mohammadpur,Dhaka',
            'status' => '0',
        ]);

        DB::table('hospital_supports')->insert([
            'name' => 'Dhaka Monorogh Chinic House',
            'hospital_mobile'=> '9005050',
            'ambulance_contact' => '',
            'location' => '13,Road#I Block#11/A,Mirpur,Dhaka',
            'status' => '0',
        ]);

        DB::table('hospital_supports')->insert([
            'name' => 'Brain & Maind Hospital Ltd.',
            'hospital_mobile'=> '8120710',
            'ambulance_contact' => '',
            'location' => '149/A,Airport Road, Faramgate,Baityl Shoraf Mosque Complex,Dhaka',
            'status' => '0',
        ]);

        DB::table('hospital_supports')->insert([
            'name' => 'Bangabandhu Shiekh Mujib Medical University Hospital',
            'hospital_mobile'=> '8614545 or 8614001-9',
            'ambulance_contact' => '',
            'location' => 'Shabagh,Dhaka',
            'status' => '0',
        ]);

        DB::table('hospital_supports')->insert([
            'name' => 'Diabetic Association of Bangladesh',
            'hospital_mobile'=> '8616641-50 ext 2225',
            'ambulance_contact' => '',
            'location' => '122,kazi Nazrul islam Avenue,Shahbagh,Dhaka',
            'status' => '0',
        ]);

        DB::table('hospital_supports')->insert([
            'name' => 'City Hospital (Pvt) Ltd.',
            'hospital_mobile'=> '8617852 or 8623205',
            'ambulance_contact' => '',
            'location' => '67/1/1,Panthapath,Dhaka',
            'status' => '0',
        ]);

        DB::table('hospital_supports')->insert([
            'name' => 'Community Eye Hospital',
            'hospital_mobile'=> '',
            'ambulance_contact' => '',
            'location' => '40,New Elephant Road(1st Floor),Dhaka',
            'status' => '0',
        ]);

        DB::table('hospital_supports')->insert([
            'name' => 'Community Eye Hospital',
            'hospital_mobile'=> '',
            'ambulance_contact' => '',
            'location' => '40,New Elephant Road(1st Floor),Dhaka',
            'status' => '0',
        ]);

        DB::table('hospital_supports')->insert([
            'name' => 'Chittagong Medical College & Hospital',
            'hospital_mobile'=> '031-619597',
            'ambulance_contact' => '',
            'location' => 'Fazlul Kader Road,Chittagong.',
            'status' => '0',
        ]);

        DB::table('hospital_supports')->insert([
            'name' => 'Chittagong General Hospital',
            'hospital_mobile'=> '031611407',
            'ambulance_contact' => '',
            'location' => 'Andarkillah,Chittagong.',
            'status' => '0',
        ]);

        DB::table('hospital_supports')->insert([
            'name' => 'Holy Crescent Hospital (Pvt.) Ltd.',
            'hospital_mobile'=> '031-620025,031-620026031-620027, ',
            'ambulance_contact' => '8311721-5, 9113512',
            'location' => '500/A,Zakir Hossain Road, Khulshi,Chittagong.',
            'status' => '0',
        ]);
        DB::table('hospital_supports')->insert([
            'name' => 'National Hospital Chittagong',
            'hospital_mobile'=> '031-623713,031-623753',
            'ambulance_contact' => '',
            'location' => '500/A,Zakir Hossain Road, Khulshi,Chittagong.',
            'status' => '0',
        ]);

        DB::table('hospital_supports')->insert([
            'name' => 'Cox s Bazar Sadar Hospital',
            'hospital_mobile'=> '0341-64066',
            'ambulance_contact' => '',
            'location' => 'Government Hospital, Hospital & Clinic Cox s Bazar Sadar, Cox s Bazar.',
            'status' => '0',
        ]);

        DB::table('hospital_supports')->insert([
            'name' => 'Comilla Medical College Hospital',
            'hospital_mobile'=> '081-77563',
            'ambulance_contact' => '',
            'location' => 'Housing State,Comilla',
            'status' => '0',
        ]);

        DB::table('hospital_supports')->insert([
            'name' => 'General Hospital Noakhali',
            'hospital_mobile'=> '081-77563',
            'ambulance_contact' => '',
            'location' => 'Government Hospital Noakhali, Noakhali Sadar,Noakhali',
            'status' => '0',
        ]);

        DB::table('hospital_supports')->insert([
            'name' => 'General Hospital Rangamati',
            'hospital_mobile'=> '01730324775',
            'ambulance_contact' => '',
            'location' => 'Government Hospital, Rangamati Sadar, Rangamati',
            'status' => '0',
        ]);

        DB::table('hospital_supports')->insert([
            'name' => 'General Hospital Bandhrban',
            'hospital_mobile'=> '01730324765',
            'ambulance_contact' => '',
            'location' => 'Government Hospital,Hospital & Clinic Hospital Road, Bandarban Sadar',
            'status' => '0',
        ]);

        DB::table('hospital_supports')->insert([
            'name' => 'Dhaka Sorordi Hospital',
            'hospital_mobile'=> '',
            'ambulance_contact' => '',
            'location' => 'Shamoli,Dhaka',
            'status' => '0',
        ]);

        DB::table('hospital_supports')->insert([
            'name' => 'Khulna Medical College Hospital',
            'hospital_mobile'=> '+88041-761535',
            'ambulance_contact' => '',
            'location' => 'Khulna',
            'status' => '0',
        ]);

        DB::table('hospital_supports')->insert([
            'name' => 'Uttora Hospital Pvt. Ltd',
            'hospital_mobile'=> '042166347',
            'ambulance_contact' => '',
            'location' => 'Jail Road, Jessore',
            'status' => '0',
        ]);

        DB::table('hospital_supports')->insert([
            'name' => 'Satkhira General Hospital',
            'hospital_mobile'=> '01716803081',
            'ambulance_contact' => '',
            'location' => 'R760, Satkhira Town',
            'status' => '0',
        ]);

        DB::table('hospital_supports')->insert([
            'name' => 'Bagerhat Government Sadar Hospital',
            'hospital_mobile'=> '01711271304',
            'ambulance_contact' => '',
            'location' => 'Munigong Gotapara Bemorta, Bagerhat.',
            'status' => '0',
        ]);

        DB::table('hospital_supports')->insert([
            'name' => 'District Hospital Kushtia',
            'hospital_mobile'=> '01730324798',
            'ambulance_contact' => '',
            'location' => 'Government Hospital Kushtia Sadar, Kushtia',
            'status' => '0',
        ]);

        DB::table('hospital_supports')->insert([
            'name' => 'Chuadanga District Hospital',
            'hospital_mobile'=> '01730324794',
            'ambulance_contact' => '',
            'location' => 'Government Hospital & Clinic Chuadanga Sadar,Chuadanga',
            'status' => '0',
        ]);

        DB::table('hospital_supports')->insert([
            'name' => 'Jhenaidah Sadar,Hospital',
            'hospital_mobile'=> '0451-62201',
            'ambulance_contact' => '',
            'location' => 'Jhenaidah Sadar, Jhenaidah',
            'status' => '0',
        ]);

        DB::table('hospital_supports')->insert([
            'name' => 'Magura District Hospital',
            'hospital_mobile'=> '0173032799',
            'ambulance_contact' => '',
            'location' => 'Government Hospital, Magura',
            'status' => '0',
        ]);

        DB::table('hospital_supports')->insert([
            'name' => 'District Hospital Meherpur',
            'hospital_mobile'=> '01730324800',
            'ambulance_contact' => '',
            'location' => 'Government Hospital,Meherpur Sadar, Meherpur',
            'status' => '0',
        ]);

        DB::table('hospital_supports')->insert([
            'name' => 'Narail District Hospital ',
            'hospital_mobile'=> '01730324801',
            'ambulance_contact' => '',
            'location' => 'Government Hospital,Narail Sadar, Narail',
            'status' => '0',
        ]);

        DB::table('hospital_supports')->insert([
            'name' => 'City Diagnostic Center Rajshahi ',
            'hospital_mobile'=> '0721774180',
            'ambulance_contact' => '',
            'location' => 'Private hospital & Clinic, Rajshahi Sadar, Rajshahi',
            'status' => '0',
        ]);

        DB::table('hospital_supports')->insert([
            'name' => 'Bogura Sadar Hospital',
            'hospital_mobile'=> '05663331',
            'ambulance_contact' => '',
            'location' => 'Bogura, Sadar',
            'status' => '0',
        ]);

        DB::table('hospital_supports')->insert([
            'name' => 'General Hospital Pabna',
            'hospital_mobile'=> '073165077',
            'ambulance_contact' => '',
            'location' => 'Pabna',
            'status' => '0',
        ]);

        DB::table('hospital_supports')->insert([
            'name' => 'District Hospital Chapai Nawabganj',
            'hospital_mobile'=> '01730324803',
            'ambulance_contact' => '',
            'location' => 'Government Hospital , Nababgonj Sadar, Chapai Nawabganj',
            'status' => '0',
        ]);

        DB::table('hospital_supports')->insert([
            'name' => 'Jaipurhat Sadar Hospital',
            'hospital_mobile'=> '057162220',
            'ambulance_contact' => '',
            'location' => 'Jaipurhat Sadar',
            'status' => '0',
        ]);

        DB::table('hospital_supports')->insert([
            'name' => 'District Hospital Naogaon',
            'hospital_mobile'=> '01730324810',
            'ambulance_contact' => '',
            'location' => 'Government Hospital Naogaon Sadar, Naogaon',
            'status' => '0',
        ]);

        DB::table('hospital_supports')->insert([
            'name' => 'Amena Hospial Bonpara',
            'hospital_mobile'=> '01711869818',
            'ambulance_contact' => '',
            'location' => 'Bonpara, Boraigram,Natore',
            'status' => '0',
        ]);

        DB::table('hospital_supports')->insert([
            'name' => 'Mahmood Clinic Natore',
            'hospital_mobile'=> '077162778',
            'ambulance_contact' => '',
            'location' => 'Natore Sadar,Natore',
            'status' => '0',
        ]);

        DB::table('hospital_supports')->insert([
            'name' => 'Belkunchi Upazila Health Complex',
            'hospital_mobile'=> '01730324716',
            'ambulance_contact' => '',
            'location' => 'Government Hospital Belkuchi, Belkuchi',
            'status' => '0',
        ]);

        DB::table('hospital_supports')->insert([
            'name' => 'Ullapara Upazila Helth Complex',
            'hospital_mobile'=> '01730324723',
            'ambulance_contact' => '',
            'location' => 'Government Hospital Ullapara, Sirajganj',
            'status' => '0',
        ]);

        DB::table('hospital_supports')->insert([
            'name' => 'Uzirpur Upazila Helth Complex',
            'hospital_mobile'=> '01730324416',
            'ambulance_contact' => '',
            'location' => 'Government Hospital & Clinic Uzirpur, Barisal',
            'status' => '0',
        ]);

        DB::table('hospital_supports')->insert([
            'name' => 'General Hospital Barguna',
            'hospital_mobile'=> '01730324884',
            'ambulance_contact' => '',
            'location' => 'Government Hospital & Clinic Barguna Sadar,Barguna',
            'status' => '0',
        ]);

        DB::table('hospital_supports')->insert([
            'name' => 'General Hospital Bhola',
            'hospital_mobile'=> '01730324761',
            'ambulance_contact' => '',
            'location' => 'Government Hospital & Clinic ,Bhola Sadar, Bhola',
            'status' => '0',
        ]);

        DB::table('hospital_supports')->insert([
            'name' => 'Jhalakati Sadar Hospital',
            'hospital_mobile'=> '049862280',
            'ambulance_contact' => '',
            'location' => 'Jhalakati Sadar',
            'status' => '0',
        ]);

        DB::table('hospital_supports')->insert([
            'name' => 'General Hospital Patuakhali',
            'hospital_mobile'=> '01730324763',
            'ambulance_contact' => '',
            'location' => 'Government Hospital, sadar Patuakhali',
            'status' => '0',
        ]);

        DB::table('hospital_supports')->insert([
            'name' => 'Pirojpur Sadar Hospital',
            'hospital_mobile'=> '046162233',
            'ambulance_contact' => '',
            'location' => 'Pirojpur Sadar',
            'status' => '0',
        ]);

        DB::table('hospital_supports')->insert([
            'name' => 'Sylhet Metropolition Hospital',
            'hospital_mobile'=> '0821711116',
            'ambulance_contact' => '',
            'location' => 'Rikabibazar, Sylhet',
            'status' => '0',
        ]);

        DB::table('hospital_supports')->insert([
            'name' => 'District Hospital Habigonj',
            'hospital_mobile'=> '01730324817',
            'ambulance_contact' => '',
            'location' => 'Government Hospital , Hobigonj Sadar, Hobiganj',
            'status' => '0',
        ]);

        DB::table('hospital_supports')->insert([
            'name' => 'District Hospital Moulvibazar',
            'hospital_mobile'=> '01730324818',
            'ambulance_contact' => '',
            'location' => 'Government Hospital ,Moulvibazar Sadar, Moulvibazar',
            'status' => '0',
        ]);

        DB::table('hospital_supports')->insert([
            'name' => 'District Hospital Sunamgonj',
            'hospital_mobile'=> '17303248190',
            'ambulance_contact' => '',
            'location' => 'Government Hospital ,Sunamgonj Sadar, Sunamgonj',
            'status' => '0',
        ]);

        DB::table('hospital_supports')->insert([
            'name' => 'Haragacha Bed Hospital',
            'hospital_mobile'=> '01730324882',
            'ambulance_contact' => '',
            'location' => 'Government Hospital ,Haragacha, Rangpur',
            'status' => '0',
        ]);

        DB::table('hospital_supports')->insert([
            'name' => 'District Hospital Dinajpur',
            'hospital_mobile'=> '01730324805',
            'ambulance_contact' => '',
            'location' => 'Dinajpur Sadar, Dinajpur',
            'status' => '0',
        ]);

        DB::table('hospital_supports')->insert([
            'name' => 'District Hospital Gaibandha',
            'hospital_mobile'=> '01730324806',
            'ambulance_contact' => '',
            'location' => 'Government Hospital Sadar, Gaibandha',
            'status' => '0',
        ]);

        DB::table('hospital_supports')->insert([
            'name' => 'District Hospital Kurigram',
            'hospital_mobile'=> '01730324808',
            'ambulance_contact' => '',
            'location' => 'Government Hospital Sadar, Kurigram',
            'status' => '0',
        ]);

        DB::table('hospital_supports')->insert([
            'name' => 'District Hospital Lalmonirhat',
            'hospital_mobile'=> '01730324809',
            'ambulance_contact' => '',
            'location' => 'Government Hospital Sadar, Lalmonirhat',
            'status' => '0',
        ]);

        DB::table('hospital_supports')->insert([
            'name' => 'District Hospital Nilphamari',
            'hospital_mobile'=> '01730324812',
            'ambulance_contact' => '',
            'location' => 'Government Hospital Sadar, Nilphamari',
            'status' => '0',
        ]);

        DB::table('hospital_supports')->insert([
            'name' => 'District Hospital Panchagar',
            'hospital_mobile'=> '01730324814',
            'ambulance_contact' => '',
            'location' => 'Government Hospital Sadar, Panchagar',
            'status' => '0',
        ]);

        DB::table('hospital_supports')->insert([
            'name' => 'District Hospital Thakurgaon',
            'hospital_mobile'=> '01730324816',
            'ambulance_contact' => '',
            'location' => 'Government Hospital Sadar, Thakurgaon',
            'status' => '0',
        ]);

        DB::table('hospital_supports')->insert([
            'name' => 'AL-Baraka Hospital Mymensingh',
            'hospital_mobile'=> '01730324816',
            'ambulance_contact' => '',
            'location' => 'Charpara,Mymensingh',
            'status' => '0',
        ]);

        DB::table('hospital_supports')->insert([
            'name' => 'Sarishabari Upazila Health Complex',
            'hospital_mobile'=> '01730324492',
            'ambulance_contact' => '',
            'location' => 'Government Hospital ,Sarishabari,Jamalpur',
            'status' => '0',
        ]);

        DB::table('hospital_supports')->insert([
            'name' => 'District Hospital Sherpur',
            'hospital_mobile'=> '01730324791',
            'ambulance_contact' => '',
            'location' => 'Government Hospital Sherpur Sadar, Sherput',
            'status' => '0',
        ]);

        DB::table('hospital_supports')->insert([
            'name' => 'District Hospital Netrakona',
            'hospital_mobile'=> '01730324788',
            'ambulance_contact' => '',
            'location' => ' Government Hospital Netrokona Sadar,Netrakona',
            'status' => '0',
        ]);

        DB::table('hospital_supports')->insert([
            'name' => 'District Hospital Netrakona',
            'hospital_mobile'=> '01730324788',
            'ambulance_contact' => '',
            'location' => ' Government Hospital Netrokona Sadar,Netrakona',
            'status' => '0',
        ]);

        DB::table('hospital_supports')->insert([
            'name' => 'General Hospital Gopalgonj',
            'hospital_mobile'=> '01730324778',
            'ambulance_contact' => '',
            'location' => ' Government Hospital Gopalgonj Sadar,Gopalgonj',
            'status' => '0',
        ]);

        DB::table('hospital_supports')->insert([
            'name' => 'General Hospital Madaripur',
            'hospital_mobile'=> '01730324781',
            'ambulance_contact' => '',
            'location' => ' Government Hospital Madaripur Sadar,Madaripur',
            'status' => '0',
        ]);

        DB::table('hospital_supports')->insert([
            'name' => 'General Hospital Norshingdi',
            'hospital_mobile'=> '01730324786',
            'ambulance_contact' => '',
            'location' => ' Government Hospital Norshingdi Sadar,Norshingdi',
            'status' => '0',
        ]);

        DB::table('hospital_supports')->insert([
            'name' => 'General Hospital Tangail',
            'hospital_mobile'=> '01730324792',
            'ambulance_contact' => '',
            'location' => ' Government Hospital Tangail Sadar,Tangail',
            'status' => '0',
        ]);

        DB::table('hospital_supports')->insert([
            'name' => 'General Hospital Shariatpur',
            'hospital_mobile'=> '01730324790',
            'ambulance_contact' => '',
            'location' => ' Government Hospital Shariatpur Sadar,Shariatpur',
            'status' => '0',
        ]);

        DB::table('hospital_supports')->insert([
            'name' => 'General Hospital Rajbari',
            'hospital_mobile'=> '01730324789',
            'ambulance_contact' => '',
            'location' => ' Government Hospital Rajbari Sadar,Rajbari',
            'status' => '0',
        ]);

        DB::table('hospital_supports')->insert([
            'name' => 'International Medical Collage & Hospital ',
            'hospital_mobile'=> '068129814550',
            'ambulance_contact' => '',
            'location' => ' Gushulia, Sataish, Tongi,Gazipur Sadar,P.C.1700,Gazipur',
            'status' => '0',
        ]);



        DB::table('hospital_supports')->insert([
            'name' => 'District Hospital Hogura',
            'ambulance_contact' => '01730324803',
            'location' => ' Government Hospital  & Clinic, Bogura Sadar, Bogura',
            'status' => '0',
        ]);

        DB::table('hospital_supports')->insert([
            'name' => 'Nandigram Upazila Health Complex',
            'ambulance_contact' => '01730324625',
            'location' => ' Government Hospital  & Clinic, Nandigram, Bogura',
            'status' => '0',
        ]);

        DB::table('hospital_supports')->insert([
            'name' => 'General Medical Hospital',
            'hospital_mobile'=> '819326',
            'ambulance_contact' => '',
            'location' => '103,Elephant Road,Dhaka-1205',
            'status' => '0',
        ]);

        DB::table('hospital_supports')->insert([
            'name' => 'Dhaka Shishu Hospital',
            'hospital_mobile'=> '8116061-62 or 8114571-72',
            'ambulance_contact' => '8116061-2, 8114571-2',
            'location' => 'Sher-E-Bangla Nagar,Dhaka',
            'status' => '0',
        ]);

        DB::table('hospital_supports')->insert([
            'name' => 'Dhaka Medical College & Hospital',
            'hospital_mobile' => '8616744',
            'ambulance_contact' => '505025-29, 500121-5',
            'location' => 'Secretariat Road,Dhaka',
            'status' => '0',
        ]);

        DB::table('hospital_supports')->insert([
            'name' => 'City Dental College & Hospital',
            'hospital_mobile'=> '9341662-4 of 8313305',
            'ambulance_contact' => '',
            'location' => '1085/1, Malibagh, Chowdhurypara,Dhaka',
            'status' => '0',
        ]);


        DB::table('hospital_supports')->insert([
            'name' => 'Aktoa General Hospital',
            'ambulance_contact' => '05178487',
            'location' => ' Sherpur Road, Bogura',
            'status' => '0',
        ]);

        DB::table('hospital_supports')->insert([
            'name' => 'Bogura Sadar Hospital',
            'ambulance_contact' => '05178487',
            'location' => ' Bogura Sadar, Bogura',
            'status' => '0',
        ]);


        DB::table('hospital_supports')->insert([
            'name' => 'হৃদ রোগ হাসপাতাল',
            'hospital_mobile'=> '৯১২২৫৬০৭৮',
            'ambulance_contact' => '৯১২২৫৬০৭৮',
            'location' => 'শামলি, ঢাকা',
            'status' => '0',
        ]);
        DB::table('hospital_supports')->insert([
            'name' => 'জাতীয় চক্ষু বিজ্ঞান ইন্সিটিউট ও হাসপাতাল',
            'hospital_mobile'=>'০২-৯১১৮৩৩৬,৮১১৪৮০৭',
            'ambulance_contact' => '',
            'location' => 'শেরেবাংলা নগর,ঢাকা',
            'status' => '0',
        ]);
        DB::table('hospital_supports')->insert([
            'name' => 'জাতীয় ক্যান্সার গবেষণা ইন্সিটিউট ও হাসপাতাল',
            'hospital_mobile'=>'৯৮৮০০৭৮',
            'ambulance_contact' => '',
            'location' => 'মহাখালী,ঢাকা',
            'status' => '0',
        ]);
        DB::table('hospital_supports')->insert([
            'name' => 'জাতীয় কিডনি ইন্সিটিউট ও হাসপাতাল',
            'hospital_mobile'=>'৯১৩৬৫৫৬০',
            'ambulance_contact' => '',
            'location' => 'শেরেবাংলা নগর,ঢাকা',
            'status' => '0',
        ]);
        DB::table('hospital_supports')->insert([
            'name' => 'জাতীয় পঙ্গু হাসপাতাল',
            'hospital_mobile'=>'০১৮৪১২২২২২৪,৯১৪৪১৯০-৪',
            'ambulance_contact' => '',
            'location' => 'শেরেবাংলা নগর,ঢাকা',
            'status' => '0',
        ]);
        DB::table('hospital_supports')->insert([
            'name' => 'ন্যাশনাল হার্ড ফাউন্ডেশন অফ বাংলাদেশ',
            'hospital_mobile'=>'৮০৬১৩১৪-৬, ৮০৫৩৯৩৫-৬',
            'ambulance_contact' => '',
            'location' => ' ফোনপ্লট নং ৭/২, সেকশন-২,মিরপুর,ঢাকা',
            'status' => '0',
        ]);
        DB::table('hospital_supports')->insert([
            'name' => 'ইবনে সিনা মেডিকেল কলেজ ও হাসপাতাল',
            'hospital_mobile'=>'৯০১০৩৯৬,৯০০৫৫৯৫,৯০০৫৬১৭',
            'ambulance_contact' => '',
            'location' => ' ১/১ বি,কল্যাণপুর ,ঢাকা',
            'status' => '0',
        ]);
        DB::table('hospital_supports')->insert([
            'name' => 'কেয়ার হাসপাতাল',
            'hospital_mobile'=>'০১৭৩৩৫৮৮৩৩, ৯১৩২৫৪৮',
            'ambulance_contact' => '',
            'location' => ' ২/১ এ ,ইকবাল রোড, মোহাম্মাদপুর,আসাদগেট থেকে ৫০০ গজ উত্তর দিকে হাসপাতাল,ঢাকা',
            'status' => '0',
        ]);
        DB::table('hospital_supports')->insert([
            'name' => 'লিভার ফাউন্ডেশন অফ বাংলাদেশ',
            'hospital_mobile'=>'০১৭৩২৯৯৯৯২২। ৯১৪৬৫৩৭',
            'ambulance_contact' => '',
            'location' => 'লিভার ফাউন্ডেশন অফ বাংলাদেশ গ্রীনরোড,পান্থপথ,ঢাকা',
            'status' => '0',
        ]);

        DB::table('hospital_supports')->insert([
            'name' => 'Bangabandhu Shiekh Mujib Medical University Hospital',
            'hospital_mobile'=> '8614545 or 8614001-9',
            'ambulance_contact' => '',
            'location' => 'Shabagh,Dhaka',
            'status' => '0',
        ]);

        DB::table('hospital_supports')->insert([
            'name' => 'Birdem',
            'hospital_mobile'=> '8616641-50',
            'ambulance_contact' => '661551-60, 8616641-50, Ext-2301',
            'location' => 'Shabagh,Dhaka',
            'status' => '0',
        ]);

        DB::table('hospital_supports')->insert([
            'name' => 'City Hospital (Pvt) Ltd.',
            'hospital_mobile'=> '8617852 or 8623205',
            'ambulance_contact' => '',
            'location' => '67/1/1,Panthapath,Dhaka',
            'status' => '0',
        ]);

        DB::table('hospital_supports')->insert([
            'name' => 'BRB Hospital',
            'hospital_mobile'=> '',
            'ambulance_contact' => '',
            'location' => 'Panthapath,Dhaka',
            'status' => '0',
        ]);

        DB::table('hospital_supports')->insert([
            'name' => 'Zia Hospital',
            'hospital_mobile' => '',
            'ambulance_contact' => '',
            'location' => 'Bogura',
            'status' => '0',
        ]);

        DB::table('hospital_supports')->insert([
            'name' => 'Dhaka PG Hospital',
            'hospital_mobile'=> '029661051-65',
            'ambulance_contact' => '9614001-5, 5,8614545-9',
            'location' => 'Shahbag,Dhaka',
            'status' => '0',
        ]);

        DB::table('hospital_supports')->insert([
            'name' => 'Appolo Hospital',
            'hospital_mobile'=> '01713064563',
            'ambulance_contact' => '01714090000',
            'location' => 'Bashundhara R/A,Dhaka',
            'status' => '0',
        ]);
        DB::table('hospital_supports')->insert([
            'name' => 'Square Hospital',
            'hospital_mobile'=> '88028129334, 91446248',
            'ambulance_contact' => '01713377775, 01713377773,8144466',
            'location' => 'Pranthpath,Dhaka',
            'status' => '0',
        ]);
        DB::table('hospital_supports')->insert([
            'name' => 'সোহরাওয়াদী মেডিক্যাল কলেজ',
            'hospital_mobile'=> '৯১৩৮০০-১৯',
            'ambulance_contact' => '০১৭১২৬২০৬৫৩,9130800',
            'location' => 'শামলি, ঢাকা',
            'status' => '0',
        ]);

















    }
}
