<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\SeatReservationController;

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

Route::get('/booking', function () {
    return view('booking');
});
Route::get('/', [SeatReservationController::class,'index']);
Route::post('submit-form', [SeatReservationController::class,'store']);
