<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SteamTopic extends Model
{
    use HasFactory;


    protected $fillable = [
        'steam_subject_id',
        'title'
    ];

    public function SteamSubject()
    {
        return $this->belongsTo(SteamSubject::class);
    }

//    public function SteamChapters()
//    {
//        return $this->hasMany(Chapter::class);
//    }
}
