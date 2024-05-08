<?php

namespace App\Http\Controllers;

use App\Models\SteamSubject;
use App\Http\Controllers\Controller;
use App\Http\Requests\StoreSteamSubjectRequest;
use App\Http\Requests\UpdateSteamSubjectRequest;

class SteamSubjectController extends Controller
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
     * @param  \App\Http\Requests\StoreSteamSubjectRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreSteamSubjectRequest $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\SteamSubject  $steamSubject
     * @return \Illuminate\Http\Response
     */
    public function show(SteamSubject $steamSubject)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\SteamSubject  $steamSubject
     * @return \Illuminate\Http\Response
     */
    public function edit(SteamSubject $steamSubject)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdateSteamSubjectRequest  $request
     * @param  \App\Models\SteamSubject  $steamSubject
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateSteamSubjectRequest $request, SteamSubject $steamSubject)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\SteamSubject  $steamSubject
     * @return \Illuminate\Http\Response
     */
    public function destroy(SteamSubject $steamSubject)
    {
        //
    }
}
