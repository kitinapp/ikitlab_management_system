<?php

namespace App\Http\Controllers;

use App\Models\Reporting;
use App\Http\Requests\StoreReportingRequest;
use App\Http\Requests\UpdateReportingRequest;

class ReportingController extends Controller
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
     * @param  \App\Http\Requests\StoreReportingRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreReportingRequest $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Reporting  $reporting
     * @return \Illuminate\Http\Response
     */
    public function show(Reporting $reporting)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Reporting  $reporting
     * @return \Illuminate\Http\Response
     */
    public function edit(Reporting $reporting)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdateReportingRequest  $request
     * @param  \App\Models\Reporting  $reporting
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateReportingRequest $request, Reporting $reporting)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Reporting  $reporting
     * @return \Illuminate\Http\Response
     */
    public function destroy(Reporting $reporting)
    {
        //
    }
}
