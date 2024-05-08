<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SteamSubject extends Model
{
    use HasFactory;

    protected $fillable = [
        'steam_id',
        'title'
    ];
}
