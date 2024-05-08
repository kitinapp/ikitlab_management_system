<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasOne;

class Reporting extends Model
{
    protected $fillable = [
        'class_id',
        'teacher_id',
        'school_id',
        'total_students',
        'present_students',
        'subject_id',
        'content_delivered',
        'activity',
        'class_starting_time',
        'class_ending_time',
        'video',
        'photo',
    ];


    use HasFactory;

    public function classes(): HasOne
    {
        return $this->hasOne(Classes::class);
    }

    public function users(): HasOne
    {
        return $this->hasOne(User::class);
    }

    public function schools(): HasOne
    {
        return $this->hasOne(School::class);
    }

    public function subjects(): HasOne
    {
        return $this->hasOne(Subject::class);
    }

}
