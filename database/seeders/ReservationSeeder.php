<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Reservation;

class ReservationSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $reservation = array();
        for($i=0; $i < 80; $i++){
            $data = ['booking_id' =>null , 'status' => 'unreserve'];
            array_push($reservation, $data);
        }
        Reservation::insert($reservation);
    }
}
