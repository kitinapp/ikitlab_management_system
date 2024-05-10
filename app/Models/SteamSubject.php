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


    public function steam()
    {
        return $this->belongsTo(Steam::class);
    }

    public function steamTopics()
    {
        return $this->hasMany(SteamTopic::class);
    }
}
