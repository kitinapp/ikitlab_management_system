<?php

namespace App\Http\Controllers;

use App\Models\SteamTopic;
use App\Http\Controllers\Controller;
use App\Http\Requests\StoreSteamTopicRequest;
use App\Http\Requests\UpdateSteamTopicRequest;

class SteamTopicController extends Controller
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
     * @param  \App\Http\Requests\StoreSteamTopicRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreSteamTopicRequest $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\SteamTopic  $steamTopic
     * @return \Illuminate\Http\Response
     */
    public function show(SteamTopic $steamTopic)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\SteamTopic  $steamTopic
     * @return \Illuminate\Http\Response
     */
    public function edit(SteamTopic $steamTopic)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdateSteamTopicRequest  $request
     * @param  \App\Models\SteamTopic  $steamTopic
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateSteamTopicRequest $request, SteamTopic $steamTopic)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\SteamTopic  $steamTopic
     * @return \Illuminate\Http\Response
     */
    public function destroy(SteamTopic $steamTopic)
    {
        //
    }
}
