<?php

return [
    'company' => [
        'name' => 'Standard Global Private Ltd',
        'phone' => '01741562233',
        'address' => 'Shakhipur Bazar, Molla Market, Rafique Islam Tower, (4Th Floor), Shakhipur, Shariatpur, Bangladesh',
        'district' => 'Shariatpur'
    ],

    'point_rate' => '25',
    'sponsor_bonus_percentage' => '16',
    'registration_charge' => '100',
    'premium_registration_point' => '25',
    'matching_bonus_percentage' => '10',
    'mega_bonus_percentage' => '5',
    'achiever_royality' => '150',
    'achiever_royality_percentage' => '8',
    'withdrawal_vat' => '5',
    'withdrawal_insurance' => '0',

    'daily_matching' => '4000',
    'matching_bonus' => '250',

    'dealer_bonus_pv' => '25',
    'dealer_bonus' => '8',
    'dealer_company_bonus' => '300',
    'dealer_district_bonus' => '75',
    'dealer_upazila_bonus' => '75',
    'dealer_union_bonus' => '50',
    'dealer_sponsor_bonus' => '2',

    'incentives' => [
        'plan0' => [
            'title' => 'Sales Officer',
            'name' => 'so',
            'condition' => '500',
            'condition_type' => 'matching'
        ],
        'plan1' => [
            'title' => 'Senior Sales Officer',
            'name' => 'sso',
            'condition' => '2500',
            'condition_type' => 'matching'
        ],
        'plan2' => [
            'title' => 'Retail Marketing Officer',
            'name' => 'rmo',
            'condition' => '5000',
            'condition_type' => 'matching'
        ],
        'plan3' => [
            'title' => 'Markting Officer',
            'name' => 'mo',
            'condition' => '15000',
            'condition_type' => 'matching'
        ],
        'plan4' => [
            'title' => 'Senior Marketing Officer',
            'name' => 'smo',
            'condition' => '30000',
            'condition_type' => 'matching'
        ],
        'plan5' => [
            'title' => 'Asst. General Manager',
            'name' => 'agm',
            'condition' => '50000',
            'condition_type' => 'matching'
        ],
        'plan6' => [
            'title' => 'General Manager',
            'name' => 'gm',
            'condition' => '100000',
            'condition_type' => 'matching'
        ],
        'plan7' => [
            'title' => 'Vice President',
            'name' => 'vp',
            'l_condition' => '5',
            'r_condition' => '4',
            'condition_type' => 'gm'
        ],
        'plan8' => [
            'title' => 'President',
            'name' => 'president',
            'l_condition' => '4',
            'r_condition' => '3',
            'condition_type' => 'vp'
        ],
        'plan9' => [
            'title' => 'Brand Ambassador',
            'name' => 'ba',
            'l_condition' => '3',
            'r_condition' => '2',
            'condition_type' => 'president'
        ]
    ],
];
