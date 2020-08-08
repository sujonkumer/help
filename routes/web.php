<?php

	/*
		|--------------------------------------------------------------------------
		| Web Routes
		|--------------------------------------------------------------------------
		|
		| Here is where you can register web routes for your application. These
		| routes are loaded by the RouteServiceProvider within a group which
		| contains the "web" middleware group. Now create something great!
		|
	*/


    //Frontend Routes
    Route::get('/','frontend\FrontendController@index')->name('index');

    //Route::get('/country','frontend\FrontendController@selectCountry')->name('index.select');
     //Search Option
     Route::get('/search','frontend\FrontendController@search')->name('search');

     // Hospital Routes
     Route::post('add-hospital-info','HospitalSupportController@addHospital')->name('add-hospital');
     Route::get('hospital-info-list','HospitalSupportController@hospitalInfoList')->name('hospital-info-lists');
     Route::get('delete-hospital-info/{id}','HospitalSupportController@hospitalDelete');

    // Bus Counter  Routes
    Route::get('counter-list','BusCounterController@counterList')->name('counter-lists');
    Route::post('add-counter','BusCounterController@addCounter')->name('add-counter');
    Route::get('delete-counter/{id}','BusCounterController@counterDelete');

     // Disase Medicine Routes
     Route::get('disease-list','DiseaseMedicineController@diseaseList')->name('disease-lists');
     Route::post('add-disease','DiseaseMedicineController@addDisease')->name('add-disease');
     Route::get('delete-disease/{id}','DiseaseMedicineController@diseaseDelete');

     // FB Blood Donate Group
     Route::get('fb-blood-group-link-list','FBGroupControlller@FBGroupList')->name('fb-group-lists');
     Route::post('fb-blood-group-add','FBGroupControlller@FBBloodGroupAdd')->name('fb-blood-group-add');
     Route::get('delete-fb-blood-group/{id}','FBGroupControlller@FBBloodDelete');

     // Fire Service Routes
     Route::get('fire-service-list','FireServiceController@FireServiceList')->name('fire-service-list');

     // Thana Service Routes
     Route::get('thana-service-list','ThanaServiceController@ThanaServiceList')->name('thana-service-list');

     //Mp Minister service routes
     Route::get('mp-minister-list','MpMinisteController@MpMinisteList')->name('mp-minister-list');

     //Gov't Website service route
     Route::get('govt-website-list','GovtWebsiteController@GovtWebsiteList')->name('govt-website-list');




    //Language Set Route
    Route::get('locale/{locale}',function($locale){
        Session::put('locale',$locale);
        return redirect()->back();
    });

    Route::get('country','frontend\FrontendController@index')->name('index.select');



	Auth::routes(['register' => true]);
	Route::group(['middleware' => ['auth']], function () {
			Route::prefix('admin')->group(function () {
                //Language Set Route
                Route::get('locale/{locale}',function($locale){
                    Session::put('locale',$locale);
                    return redirect()->back();
                });
                Route::get('/','AdminController@index')->name('admin.index');

				Route::get('log-out','AdminController@logOut')->name('admin.log-out');
				//password change route
				Route::post('change-password','AdminController@changePassword')->name('admin.change-password');
				Route::post('/update-profile-data','AdminController@updataProfile')->name('admin.updata-profile');



				//Admin Donner List
				Route::get('donner','DonnerController@donner')->name('donner');
				Route::post('add-donner','DonnerController@addDonner')->name('add-donner');
				Route::get('donner-list','DonnerController@donnerList')->name('donner-list');
                Route::get('delete-donner/{id}','DonnerController@donnerDelete');

                // Hospital Support
                Route::get('hospital-support','HospitalSupportController@hospitalSupport')->name('hospital_support');
                Route::get('hospital-info-list','HospitalSupportController@hospitalSupportList')->name('hospital-info-list');

                // Diesease & Medicine
                Route::get('disease','DiseaseMedicineController@diseaseMedicine')->name('disease_medicine');
                Route::get('disease-list','DiseaseMedicineController@diseaseAndMedicineList')->name('disease-list');

                // FB Blood Group
                Route::get('Fb-blood-donate-group','FBGroupControlller@FbBloodGroup')->name('fb_blood_broup');
                Route::get('fb-blood-group-link-list','FBGroupControlller@FBBloodGroupList')->name('fb-group-list');

		});

	});







