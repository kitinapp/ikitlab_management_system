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
            $table->foreignId('steam_id');
            $table->foreign('steam_id')->references('id')->on('steams')->onDelete('cascade');
            $table->foreignId('steam_subject_id');
            $table->foreign('steam_subject_id')->references('id')->on('steam_topics')->onDelete('cascade');
            $table->foreignId('steam_topic_id');
            $table->foreign('steam_topic_id')->references('id')->on('steam_topics')->onDelete('cascade');
            $table->foreignId('steam_chapter_id');
            $table->foreign('steam_chapter_id')->references('id')->on('steam_chapters')->onDelete('cascade');
            $table->foreignId('teacher_id');
            $table->foreign('teacher_id')->references('id')->on('users')->onDelete('cascade');
            $table->foreignId('class_id');
            $table->foreign('class_id')->references('id')->on('classes')->onDelete('cascade');
            $table->foreignId('section_id');
            $table->foreign('section_id')->references('id')->on('sections')->onDelete('cascade');
            $table->foreignId('school_id');
            $table->foreign('school_id')->references('id')->on('schools')->onDelete('cascade');
            $table->foreignId('subject_id');
            $table->foreign('subject_id')->references('id')->on('subjects');
            $table->integer('present_students');
            $table->time('class_starting_time');
            $table->time('class_ending_time');
            $table->string('activity')->nullable();
            $table->string('remark')->nullable();
            $table->string('video')->nullable();
            $table->string('photo')->nullable();;
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
