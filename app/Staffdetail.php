<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Spatie\Activitylog\Traits\LogsActivity;

class Staffdetail extends Model
{
   
    protected $fillable = [
        'user_id', 'cstreetaddress', 'cstreetaddress2','ccity','pstreetaddress','pstreetaddress2','pcity',
        'gaurdianname','gaurdianrelation','gaurdiancontact','landline','phonenumber', 'bloodgroup','dob','cnic','passportno',
        'attendanceid','extension','ccmsid','skypeid','shift','latecomming', 'latecomming' ,'attendancecheck', 'endtime', 'starttime',  'joiningdate' , 'fileno',
    ];

    protected $dates = [
        'dob',
        'joiningdate',
        'endingdate',
        'created_at',
        'updated_at'
    ];
    
    public function user(){
        return $this->belongsTo(User::class, 'user_id', 'id' );
    }
    
    
}
