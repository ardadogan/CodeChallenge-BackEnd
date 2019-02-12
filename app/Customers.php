<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Customers extends Model
{
    protected $fillable = ['name' , 'email' , 'phone' ,  'address', 'lat' , 'lng' , 'created_by', 'start_date' , 'end_date'];
}
