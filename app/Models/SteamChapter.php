<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SteamChapter extends Model
{
    use HasFactory;

    protected $fillable = [
        'steam_topic_id',
        'title'
    ];

    public function SteamTopic()
    {
        return $this->belongsTo(SteamTopic::class);
    }
}
