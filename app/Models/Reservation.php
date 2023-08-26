<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Reservation extends Model
{
    use HasFactory;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'booking_id',
        'status',
    ];

    public function reserveSeats($availableSeats){
        $randBookingId = rand(1000,9999);
        foreach($availableSeats as $seat){
            self::where('id', $seat->id)->update([
                'booking_id' => $randBookingId,
                'status' => 'reserve', 
            ]);
        }
        return $randBookingId;
    }

    public function getSeats(){
        return self::get();
    }
}
