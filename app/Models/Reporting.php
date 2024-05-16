<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Relations\HasOne;

class Reporting extends Model
{
    protected $fillable = [
        'steam_id',
        'steam_subject_id',
        'steam_topic_id',
        'steam_chapter_id',
        'teacher_id',
        'class_id',
        'section_id',
        'school_id',
        'subject_id',
        'present_students',
        'class_starting_time',
        'class_ending_time',
        'activity',
        'remark',
        'video',
        'photo',
    ];


    use HasFactory;

    public function class()
    {
        return $this->belongsTo(Classes::class);
    }

    public function section()
    {
        return $this->belongsTo(Section::class);
    }

    public function steam()
    {
        return $this->belongsTo(Steam::class);
    }

    public function steamSubject()
    {
        return $this->belongsTo(SteamSubject::class);
    }

    public function steamTopic()
    {
        return $this->belongsTo(SteamTopic::class);
    }

    public function steamChapter()
    {
        return $this->belongsTo(SteamChapter::class);
    }

    public function users(): HasMany
    {
        return $this->hasMany(User::class);
    }

    public function schools(): hasMany
    {
        return $this->hasMany(School::class);
    }

    public function subjects(): hasMany
    {
        return $this->hasMany(Subject::class);
    }

}
