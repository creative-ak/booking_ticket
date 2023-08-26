<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Reservation;

class SeatReservationController extends Controller
{
    public function __construct(){

        $this->reservation = new Reservation();
    }

    public function index(){
        $reservationObj = $this->reservation->getSeats();
        return view('welcome', compact('reservationObj'));
    }
    public function store(Request $request){
        $request->validate([
            'qty' => 'required',
        ]);
        //get unreserve seat
        $getNotReserveSeat = $this->reservation::where('status','unreserve')
                            ->limit($request->qty)->get();
        $hasSaved =false;
        //check and call function to reserve the seat
        if($getNotReserveSeat->isNotEmpty() && $request->qty <= $getNotReserveSeat->count()){
            $hasSaved = $this->reservation->reserveSeats($getNotReserveSeat);
        }
        // after booking
        if($hasSaved){
            //get booked seat details
            $bookedInfo = $this->reservation::where('booking_id',$hasSaved)->get();
            $tmpBookingId = '';
            $tmpSeat = '';
            foreach($bookedInfo as $value){
                $tmpBookingId = $value->booking_id;
                $tmpSeat .= $value->id . ',';
            }
            $returnArr = ['bookingId'=>$tmpBookingId,'seats'=>trim($tmpSeat, ',')];
            return response()->json(['success'=>'Successfully','data'=>$returnArr]);
        }else{
            return response()->json(['error'=>'Request quantity not available.']);
        }
    }
}
