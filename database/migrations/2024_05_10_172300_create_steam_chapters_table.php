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
        Schema::create('steam_chapters', function (Blueprint $table) {
            $table->id();
            $table->string('title');
            $table->foreignId('steam_topic_id');
            $table->foreign('steam_topic_id')->references('id')->on('steam_topics')->onDelete('cascade');
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
        Schema::dropIfExists('steam_chapters');
    }
};
