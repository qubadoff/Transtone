<?php

use Illuminate\Support\Facades\Route;

Route::group(['prefix' => 'admin'], function () { Voyager::routes(); });

Route::get('/', function (){ return redirect(app()->getLocale()); });

Route::prefix('{locale}')->where(['locale' => '[a-zA-Z]{2}'])->middleware('setLocale')->group(function (){
    Route::get('/', [\App\Http\Controllers\GeneralController::class, 'index'])->name('index');

    Route::get('/pages/{slug}', [\App\Http\Controllers\GeneralController::class, 'page'])->name('page');

    Route::get('/news/{slug}', [\App\Http\Controllers\GeneralController::class, 'singleNews'])->name('singleNews');

    Route::get('/cars', [\App\Http\Controllers\GeneralController::class, 'car'])->name('car');
    Route::get('/cars/{slug}', [\App\Http\Controllers\GeneralController::class, 'singleCar'])->name('singleCar');

    Route::get('/services', [\App\Http\Controllers\GeneralController::class, 'services'])->name('services');
    Route::get('/services/{slug}', [\App\Http\Controllers\GeneralController::class, 'singleServices'])->name('singleServices');

    Route::get('/techniques', [\App\Http\Controllers\GeneralController::class, 'techniques'])->name('techniques');
    Route::get('/techniques/{slug}', [\App\Http\Controllers\GeneralController::class, 'techniquesSingle'])->name('techniquesSingle');

    Route::get('/gallery', [\App\Http\Controllers\GeneralController::class, 'gallery'])->name('gallery');


    Route::get('/sector', [\App\Http\Controllers\GeneralController::class, 'sector'])->name('sector');
    Route::get('/sector/{slug}', [\App\Http\Controllers\GeneralController::class, 'singleSector'])->name('singleSector');


    Route::get('/contact', [\App\Http\Controllers\GeneralController::class, 'contact'])->name('contact');
    Route::post('/contact-message', [\App\Http\Controllers\GeneralController::class, 'sendMessage'])->name('sendMessage');

    Route::post('/getSubscripter', [\App\Http\Controllers\GeneralController::class, 'getSubscripter'])->name('getSubscripter');

    Route::get('/reservation', [\App\Http\Controllers\GeneralController::class, 'reservation'])->name('reservation');
    Route::post('/book-order', [\App\Http\Controllers\GeneralController::class, 'bookOrder'])->name('bookOrder');
});
