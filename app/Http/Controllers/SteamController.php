<?php

namespace App\Http\Controllers;

use App\Models\Steam;
use App\Http\Controllers\Controller;
use App\Http\Requests\StoreSteamRequest;
use App\Http\Requests\UpdateSteamRequest;

class SteamController extends Controller
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
     * @param  \App\Http\Requests\StoreSteamRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreSteamRequest $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Steam  $steam
     * @return \Illuminate\Http\Response
     */
    public function show(Steam $steam)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Steam  $steam
     * @return \Illuminate\Http\Response
     */
    public function edit(Steam $steam)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdateSteamRequest  $request
     * @param  \App\Models\Steam  $steam
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateSteamRequest $request, Steam $steam)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Steam  $steam
     * @return \Illuminate\Http\Response
     */
    public function destroy(Steam $steam)
    {
        //
    }
}
