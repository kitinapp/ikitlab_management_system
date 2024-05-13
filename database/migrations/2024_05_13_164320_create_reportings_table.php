<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('reportings', function (Blueprint $table) {
            $table->id();
            $table->integer('teacher_id')->references('id')->on('users')->onDelete('cascade');
            $table->integer('class_id')->references('id')->on('classes')->onDelete('cascade');
            $table->integer('school_id')->references('id')->on('schools')->onDelete('cascade');
            $table->integer('total_students')->references('total_students')->on('classes');
            $table->integer('present_students');
            $table->integer('subject_id')->references('id')->on('subjects')->onDelete('cascade');
            $table->string('content_delivered');
            $table->string('activity');
            $table->dateTime('class_starting_time');
            $table->dateTime('class_ending_time');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('reportings');
    }
};
