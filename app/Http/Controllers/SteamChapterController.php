<?php

namespace App\Http\Controllers;

use App\Models\SteamChapter;
use App\Http\Controllers\Controller;
use App\Http\Requests\StoreSteamChapterRequest;
use App\Http\Requests\UpdateSteamChapterRequest;

class SteamChapterController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\StoreSteamChapterRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreSteamChapterRequest $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\SteamChapter  $steamChapter
     * @return \Illuminate\Http\Response
     */
    public function show(SteamChapter $steamChapter)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\SteamChapter  $steamChapter
     * @return \Illuminate\Http\Response
     */
    public function edit(SteamChapter $steamChapter)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdateSteamChapterRequest  $request
     * @param  \App\Models\SteamChapter  $steamChapter
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateSteamChapterRequest $request, SteamChapter $steamChapter)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\SteamChapter  $steamChapter
     * @return \Illuminate\Http\Response
     */
    public function destroy(SteamChapter $steamChapter)
    {
        //
    }
}
