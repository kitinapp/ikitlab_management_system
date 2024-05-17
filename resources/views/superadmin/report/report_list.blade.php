@extends('superadmin.navigation')

@section('content')

    <?php

    use App\Http\Controllers\CommonController;
    use App\Models\School;
    use App\Models\Section;
    use Carbon\Carbon;

    ?>

    <div class="mainSection-title">
        <div class="row">
            <div class="col-12">
                <div class="d-flex justify-content-between align-items-center flex-wrap gr-15">
                    <div class="d-flex flex-column">
                        <h4>{{ get_phrase('Reports') }}</h4>
                        <ul class="d-flex align-items-center eBreadcrumb-2">
                            <li><a href="#">{{ get_phrase('Home') }}</a></li>
                            <li><a href="#">{{ get_phrase('Reporting') }}</a></li>
                            <li><a href="#">{{ get_phrase('List') }}</a></li>
                        </ul>
                    </div>
                    <div class="export-btn-area">
                        <a href="{{ route('teacher.reporting.open_modal') }}"
                           class="export_btn">{{ get_phrase('Create') }}</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Start Students area -->
    <div class="row">


        <div class="col-12">
            <div class="eSection-wrap-2">
                <!-- Search and filter -->
                <div
                    class="search-filter-area d-flex justify-content-md-between justify-content-center align-items-center flex-wrap gr-15">
                    <form action="{{ route('superadmin.report') }}">
                        <div class="search-input d-flex justify-content-start align-items-center">
                            <span>
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 16 16">
                                    <path id="Search_icon" data-name="Search icon"
                                          d="M2,7A4.951,4.951,0,0,1,7,2a4.951,4.951,0,0,1,5,5,4.951,4.951,0,0,1-5,5A4.951,4.951,0,0,1,2,7Zm12.3,8.7a.99.99,0,0,0,1.4-1.4l-3.1-3.1A6.847,6.847,0,0,0,14,7,6.957,6.957,0,0,0,7,0,6.957,6.957,0,0,0,0,7a6.957,6.957,0,0,0,7,7,6.847,6.847,0,0,0,4.2-1.4Z"
                                          fill="#797c8b" />
                                </svg>
                            </span>
                            <input type="text" id="search" name="search" value="{{ $search }}"
                                   placeholder="Search user" class="form-control" />
                            @if ($school_id != '')
                                <input type="hidden" name="school_id" id="school_id" value="{{ $school_id }}">
                            @endif
                            {{--                  @if ($section_id != '') --}}
                            {{--                  <input type="hidden" name="section_id" id="section_id" value="{{ $section_id }}"> --}}
                            {{--                  @endif --}}
                        </div>
                    </form>
                    <div class="filter-export-area d-flex align-items-center">
                        <div class="position-relative">
                            <button class="eBtn-3 dropdown-toggle" type="button" id="defaultDropdown"
                                    data-bs-toggle="dropdown" data-bs-auto-close="true" aria-expanded="false">
                                <span class="pr-10">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="14.028" height="12.276"
                                         viewBox="0 0 14.028 12.276">
                                        <path id="filter-solid"
                                              d="M.106,32.627A1.1,1.1,0,0,1,1.1,32H12.934a1.092,1.092,0,0,1,.989.627,1.054,1.054,0,0,1-.164,1.164l-4.99,6.126V43.4a.877.877,0,0,1-1.4.7L5.612,42.786a.871.871,0,0,1-.351-.7V39.917L.248,33.79a1.1,1.1,0,0,1-.142-1.164Z"
                                              transform="translate(0 -32)" fill="#00a3ff" />
                                    </svg>
                                </span>
                                {{ get_phrase('Filter') }}
                            </button>
                            <div class="dropdown-menu dropdown-menu-end filter-options" aria-labelledby="defaultDropdown">
                                <h4 class="title">{{ get_phrase('Filter Options') }}</h4>
                                <form action="{{ route('superadmin.report') }}">
                                    <div class="filter-option d-flex flex-column">
                                        @if ($search != '')
                                            <input type="hidden" name="search" id="school_id"
                                                   value="{{ $search }}">
                                        @endif
                                        <div>
                                            <label for="school_id" class="eForm-label">{{ get_phrase('School') }}</label>
                                            <select class="form-select" name="school_id" id="school_id"
                                                    onchange="classWiseSection(this.value)" required>
                                                <option value="">{{ get_phrase('Select a School') }}</option>
                                                @foreach ($schools as $school)
                                                    <option value="{{ $school->id }}"
                                                        {{ $school_id == $school->id ? 'selected' : '' }}>
                                                        {{ $school->title }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    <div class="filter-button d-flex justify-content-end align-items-center">
                                        <a class="form-group">
                                            <button class="eBtn eBtn btn-primary"
                                                    type="submit">{{ get_phrase('Apply') }}</button>
                                        </a>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <!-- Export Button -->
                        @if (count($reportings) > 0)
                            <div class="position-relative">
                                <button class="eBtn-3 dropdown-toggle" type="button" id="defaultDropdown"
                                        data-bs-toggle="dropdown" data-bs-auto-close="true" aria-expanded="false">
                                    <span class="pr-10">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="12.31" height="10.77"
                                             viewBox="0 0 10.771 12.31">
                                            <path id="arrow-right-from-bracket-solid"
                                                  d="M3.847,1.539H2.308a.769.769,0,0,0-.769.769V8.463a.769.769,0,0,0,.769.769H3.847a.769.769,0,0,1,0,1.539H2.308A2.308,2.308,0,0,1,0,8.463V2.308A2.308,2.308,0,0,1,2.308,0H3.847a.769.769,0,1,1,0,1.539Zm8.237,4.39L9.007,9.007A.769.769,0,0,1,7.919,7.919L9.685,6.155H4.616a.769.769,0,0,1,0-1.539H9.685L7.92,2.852A.769.769,0,0,1,9.008,1.764l3.078,3.078A.77.77,0,0,1,12.084,5.929Z"
                                                  transform="translate(0 12.31) rotate(-90)" fill="#00a3ff" />
                                        </svg>
                                    </span>
                                    {{ get_phrase('Export') }}
                                </button>
                                <ul class="dropdown-menu dropdown-menu-end eDropdown-menu-2">
                                    <li>
                                        <a class="dropdown-item" id="pdf" href="javascript:;"
                                           onclick="Export()">{{ get_phrase('PDF') }}</a>
                                    </li>
                                    <li>
                                        <a class="dropdown-item" id="print" href="javascript:;"
                                           onclick="printableDiv('student_list')">{{ get_phrase('Print') }}</a>
                                    </li>
                                </ul>
                            </div>
                        @endif
                    </div>
                </div>
                @if (count($reportings) > 0)
                    <!-- Table -->

                    <div class="row mb-4">
                        <div class="table-responsive">
                            <table class="table eTable">
                                <thead>
                                <tr>
                                    <th scope="col">{{ get_phrase('Total Completed Chapters') }}</th>
                                    <th scope="col">{{ get_phrase('Total Chapters') }}</th>
                                    @if (isset($_GET['school_id']) != '')
                                        <th scope="col">
                                            {{ get_phrase('Total Completed Chapters in') . ' ' . School::where('id', $_GET['school_id'])->value('title') }}
                                        </th>
                                    @endif
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>
                                        <div class="dAdmin_profile d-flex align-items-center min-w-200px">
                                            <div class="">
                                                <p>
                                                    {{ $completed_chapter_in_all_schools }}
                                                </p>
                                            </div>
                                        </div>
                                    </td>

                                    <td>
                                        <div class="dAdmin_profile d-flex align-items-center min-w-200px">
                                            <div class="">
                                                <p>
                                                    {{ $total_chapters }}
                                                </p>
                                            </div>
                                        </div>
                                    </td>
                                    @if (isset($_GET['school_id']) != '')
                                        <td>
                                            <div class="dAdmin_profile d-flex align-items-center min-w-200px">
                                                <div class="">
                                                    <p>
                                                        {{ $completed_chapters }}
                                                    </p>
                                                </div>
                                            </div>
                                        </td>
                                    @endif
                                </tr>

                                </tbody>
                            </table>

                        </div>
                    </div>
                    <div class="table-responsive">
                        <table class="table eTable eTable-2">
                            <thead>
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">{{ get_phrase('Date') }}</th>
                                <th scope="col">{{ get_phrase('Students Info') }}</th>
                                <th scope="col">{{ get_phrase('Content Delivered') }}</th>
                                <th scope="col"> {{ get_phrase('View') }} </th>

                            </tr>
                            </thead>
                            <tbody>
                            @foreach ($reportings as $key => $reporting)
                                    <?php
                                    //                        $reporting = DB::table('$reportings')->where('id', $reporting->user_id)->first();
                                    //                        $reporting = DB::table('$reportings');
                                    $user_image = get_user_image($reporting->teacher_id);
                                    ?>
                                <tr>
                                    <th scope="row">
                                        <p class="row-number">{{ $reportings->firstItem() + $key }}</p>
                                    </th>
                                    <td>
                                        <div class="dAdmin_profile d-flex align-items-center min-w-200px">
                                            <div class="dAdmin_profile_name dAdmin_info_name">
                                                <p>
                                                    <span>{{ get_phrase('Date') }}:</span>
                                                    {{ date('d-m-Y', strtotime($reporting->created_at)) }}
                                                    <br>
                                                    {{--                                          <span>{{ get_phrase('Day') }}:</span> {{ Carbon::parse($reporting->created_at)->format('l')}} --}}
                                                    {{--                                          <br> --}}
                                                    {{--                                          <span>{{ get_phrase('Start Time') }}:</span> {{ $reporting->class_starting_time ?? 'No Activity' }} --}}
                                                    {{--                                          <br> --}}
                                                    {{--                                          <span>{{ get_phrase('End Time') }}:</span> {{ $reporting->class_ending_time }} --}}
                                                </p>
                                            </div>
                                        </div>
                                    </td>
                                    <td>
                                        <div class="dAdmin_profile d-flex align-items-center min-w-200px">
                                            <div class="dAdmin_profile_name dAdmin_info_name">
                                                <p>
                                                    <span>{{ get_phrase('Class') }}:</span>
                                                    {{ $reporting->class->name }}
                                                    <br>
                                                    {{--                                <span>{{ get_phrase('Section') }}:</span> {{ $reporting->section->name}} --}}
                                                    {{--                                  <br> --}}
                                                    {{--                                  <span>{{ get_phrase('Present Students') }}:</span> {{ $reporting->present_students }} --}}
                                                    {{--                                  <br> --}}
                                                    {{--                                  <span>{{ get_phrase('Total Students') }}:</span> {{ $reporting->class->total_students  }} --}}
                                                </p>
                                            </div>
                                        </div>
                                    </td>
                                    <td>
                                        <div class="dAdmin_profile d-flex align-items-center min-w-200px"s>
                                            <div class="dAdmin_profile_name dAdmin_info_name">
                                                <p>
                                                    {{--                                          <span>{{ get_phrase('STEAM') }}:</span> {{ $reporting->steam->title}} --}}
                                                    {{--                                          <br> --}}
                                                    {{--                                          <span>{{ get_phrase('Subject') }}:</span> {{ $reporting->steamSubject->title}} --}}
                                                    {{--                                          <br> --}}
                                                    {{--                                          <span>{{ get_phrase('Topic') }}:</span> {{ $reporting->steamTopic->title }} --}}
                                                    {{--                                          <br> --}}
                                                    <span>{{ get_phrase('Chapter') }}:</span>
                                                    {{ $reporting->steamChapter->title }}
                                                    <br>
                                                    {!! $reporting->activity == null
                                                        ? ''
                                                        : '<span>' . get_phrase('Activity') . ':</span> ' . trim($reporting->activity) !!}
                                                </p>
                                            </div>
                                        </div>
                                    </td>
                                    <td>
                                        <div class="adminTable-action">
                                            <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                                                    data-bs-target="{{ '#school_id' . $reporting->id }}">
                                                {{ get_phrase('View') }}
                                                &#128065; {{--  eye icon --}}
                                            </button>
                                            <!-- Modal -->
                                            <div class="modal fade" id="{{ 'school_id' . $reporting->id }}"
                                                 data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
                                                 aria-labelledby="staticBackdropLabel" aria-hidden="true">
                                                <div class="modal-dialog modal-xl">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <h1 class="modal-title fs-5" id="staticBackdropLabel">
                                                                Modal title</h1>
                                                            <button type="button" class="btn-close"
                                                                    data-bs-dismiss="modal" aria-label="Close"></button>
                                                        </div>
                                                        <div class="modal-body">
                                                            <div class="table-responsive">
                                                                <table class="table eTable eTable-2">
                                                                    <thead>
                                                                    <tr>
                                                                        <th scope="col">#</th>
                                                                        <th scope="col">{{ get_phrase('Date') }}</th>
                                                                        <th scope="col">{{ get_phrase('Students Info') }}</th>
                                                                        <th scope="col">{{ get_phrase('Content Delivered') }}</th>
                                                                        <th scope="col">{{ get_phrase('Media') }}</th>
                                                                    </thead>
                                                                    <tbody>
                                                                            <?php
                                                                                $user_image = get_user_image($reporting->teacher_id);
                                                                            ?>
                                                                        <tr>
                                                                            <th scope="row">
                                                                                <p class="row-number">{{ $reportings->firstItem() + $key }}</p>
                                                                            </th>
                                                                            <td>
                                                                                <div class="dAdmin_profile d-flex align-items-center min-w-200px">
                                                                                    <div class="dAdmin_profile_name dAdmin_info_name">
                                                                                        <p>
                                                                                            <span>{{ get_phrase('Date') }}:</span>
                                                                                            {{ date('d-m-Y', strtotime($reporting->created_at)) }}
                                                                                            <br>
                                                                                            <span>{{ get_phrase('Day') }}:</span>
                                                                                            {{ Carbon::parse($reporting->created_at)->format('l') }}
                                                                                            <br>
                                                                                            <span>{{ get_phrase('Start Time') }}:</span>
                                                                                            {{ $reporting->class_starting_time ?? 'No Activity' }}
                                                                                            <br>
                                                                                            <span>{{ get_phrase('End Time') }}:</span>
                                                                                            {{ $reporting->class_ending_time }}
                                                                                        </p>
                                                                                    </div>
                                                                                </div>
                                                                            </td>
                                                                            <td>
                                                                                <div class="dAdmin_profile d-flex align-items-center min-w-200px">
                                                                                    <div class="dAdmin_profile_name dAdmin_info_name">
                                                                                        <p>
                                                                                            <span>{{ get_phrase('Class') }}:</span>
                                                                                            {{ $reporting->class_name }}
                                                                                            <br>
                                                                                            <span>{{ get_phrase('Section') }}:</span>
                                                                                            {{ $reporting->section->name }}
                                                                                            <br>
                                                                                            <span>{{ get_phrase('Present Students') }}:</span>
                                                                                            {{ $reporting->present_students }}
                                                                                            <br>
                                                                                            <span>{{ get_phrase('Total Students') }}:</span>
                                                                                            {{ $reporting->class->total_students }}
                                                                                        </p>
                                                                                    </div>
                                                                                </div>
                                                                            </td>
                                                                            <td>
                                                                                <div class="dAdmin_profile d-flex align-items-center min-w-200px">
                                                                                    <div class="dAdmin_profile_name dAdmin_info_name">
                                                                                        <p>
                                                                                            <span>{{ get_phrase('STEAM') }}:</span>
                                                                                            {{ $reporting->steam->title }}
                                                                                            <br>
                                                                                            <span>{{ get_phrase('Subject') }}:</span>
                                                                                            {{ $reporting->steamSubject->title }}
                                                                                            <br>
                                                                                            <span>{{ get_phrase('Topic') }}:</span>
                                                                                            {{ $reporting->steamTopic->title }}
                                                                                            <br>
                                                                                            <span>{{ get_phrase('Chapter') }}:</span>
                                                                                            {{ $reporting->steamChapter->title }}
                                                                                            <br>
                                                                                            {!! $reporting->activity == null
                                                                                                ? ''
                                                                                                : '<span>' . get_phrase('Activity') . ':</span> ' . trim($reporting->activity) !!}
                                                                                        </p>
                                                                                    </div>
                                                                                </div>
                                                                            </td>
                                                                            <td>
                                                                                <div class="dAdmin_info_name min-w-250px">
                                                                                    @php
                                                                                        // Convert the string into an array
                                                                                        $photoArray = json_decode($reporting->photo);
                                                                                    @endphp

                                                                                    @if (is_array($photoArray) && count($photoArray) > 0)
                                                                                        <marquee behavior="scroll" direction="left"
                                                                                                 onmouseover="this.stop();" onmouseout="this.start();">
                                                                                            @foreach ($photoArray as $photo)
                                                                                                <a target="_blank"
                                                                                                   href="{{ asset('public/assets/uploads/reporting-images/' . trim($photo)) }}">
                                                                                                    <img class="mx-2" width="80" height="auto"
                                                                                                         src="{{ asset('public/assets/uploads/reporting-images/' . trim($photo)) }}"
                                                                                                         alt="">
                                                                                                </a>
                                                                                            @endforeach
                                                                                        </marquee>
                                                                                    @else
                                                                                        {{-- Handle the case where $reporting->photo is not in the expected format --}}
                                                                                        <p>No Media Found</p>
                                                                                    @endif
                                                                                    {{--                                  @if (is_array($reporting->photo) || is_object($reporting->photo)) --}}
                                                                                    {{--                                      @foreach ($reporting->photo as $photo) --}}
                                                                                    {{--                                          <a href=""> --}}
                                                                                    {{--                                              <img src="{{asset('public/assets/uploads/reporting-images/'.$photo)}}" alt=""> --}}
                                                                                    {{--                                              {{$photo}} --}}
                                                                                    {{--                                          </a> --}}
                                                                                    {{--                                      @endforeach --}}
                                                                                    {{--                                  @endif --}}
                                                                                    {{--                                  <p>{{ asset('public/assets/uploads/reporting-images/'.$reporting->photo)}}</p> --}}
                                                                                </div>
                                                                            </td>
                                                                        </tr>

                                                                    </tbody>
                                                                </table>

                                                                <div
                                                                    class="admin-tInfo-pagi d-flex justify-content-md-between justify-content-center align-items-center flex-wrap gr-15">
                                                                    <p class="admin-tInfo">
                                                                        {{ get_phrase('Showing') . ' 1 - ' . count($reportings) . ' ' . get_phrase('from') . ' ' . $reportings->total() . ' ' . get_phrase('data') }}
                                                                    </p>
                                                                    <div class="admin-pagi">
                                                                        {!! $reportings->appends(request()->all())->links() !!}
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-secondary"
                                                                    data-bs-dismiss="modal">Close</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                    </td>
                                </tr>
                            @endforeach
                            </tbody>
                        </table>

                        <div
                            class="admin-tInfo-pagi d-flex justify-content-md-between justify-content-center align-items-center flex-wrap gr-15">
                            <p class="admin-tInfo">
                                {{ get_phrase('Showing') . ' 1 - ' . count($reportings) . ' ' . get_phrase('from') . ' ' . $reportings->total() . ' ' . get_phrase('data') }}
                            </p>
                            <div class="admin-pagi">
                                {!! $reportings->appends(request()->all())->links() !!}
                            </div>
                        </div>
                    </div>

            </div>
            @else
                <div class="empty_box center">
                    <img class="mb-3" width="150px" src="{{ asset('public/assets/images/empty_box.png') }}" />
                    <br>
                    <span class="">{{ get_phrase('No data found') }}</span>
                </div>
            @endif
        </div>
    </div>
    </div>

    @if (count($reportings) > 0)
        <!-- Table -->
        <div class="table-responsive student_list display-none-view" id="student_list">
            <table class="table eTable eTable-2">
                <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">{{ get_phrase('Date') }}</th>
                    <th scope="col">{{ get_phrase('Students Info') }}</th>
                    <th scope="col">{{ get_phrase('Content Delivered') }}</th>
                    <th scope="col">{{ get_phrase('Class Time') }}</th>
                </thead>
                <tbody>
                @foreach ($reportings as $key => $reporting)
                        <?php
                        //                        $reporting = DB::table('$reportings')->where('id', $reporting->user_id)->first();
                        //                        $reporting = DB::table('$reportings');

                        $user_image = get_user_image($reporting->teacher_id);
                        ?>
                    <tr>
                        <th scope="row">
                            <p class="row-number">{{ $reportings->firstItem() + $key }}</p>
                        </th>
                        <td>
                            <div class="dAdmin_profile d-flex align-items-center min-w-200px">
                                <div class="dAdmin_profile_name dAdmin_info_name">
                                    <p>
                                        <span>{{ get_phrase('Day') }}:</span>
                                        {{ Carbon::parse($reporting->created_at)->format('l') }}
                                        <br>
                                        <span>{{ get_phrase('Date') }}:</span>
                                        {{ date('d-m-Y', strtotime($reporting->created_at)) }}
                                    </p>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="dAdmin_profile d-flex align-items-center min-w-200px">
                                {{--                            <div class="dAdmin_profile_img"> --}}
                                {{--                              <img --}}
                                {{--                                class="img-fluid" --}}
                                {{--                                width="50" --}}
                                {{--                                height="50" --}}
                                {{--                                object-fit="fill" --}}
                                {{--                                 src="{{ $user_image }}" --}}
                                {{--                                src="https://as1.ftcdn.net/v2/jpg/03/46/83/96/1000_F_346839683_6nAPzbhpSkIpb8pmAwufkC7c5eD7wYws.jpg" --}}
                                {{--                              /> --}}
                                {{--                            </div> --}}
                                <div class="dAdmin_profile_name dAdmin_info_name">
                                    <p>
                                        <span>{{ get_phrase('Class') }}:</span> {{ $reporting->class_name }}
                                        <br>
                                        <span>{{ get_phrase('Students') }}:</span>
                                        {{ $reporting->present_students . '/' . $reporting->total_students_from_class }}
                                    </p>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="dAdmin_profile d-flex align-items-center min-w-200px">
                                <div class="dAdmin_profile_name dAdmin_info_name">
                                    <p>
                                        <span>{{ get_phrase('Activity') }}:</span>
                                        {{ $reporting->activity ?? 'No Activity' }}
                                        <br>
                                        <span>{{ get_phrase('Content') }}:</span> {{ $reporting->content_delivered }}
                                    </p>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="dAdmin_profile d-flex align-items-center min-w-200px">
                                <div class="dAdmin_profile_name dAdmin_info_name">
                                    <p>
                                        <span>{{ get_phrase('Start Time') }}:</span>
                                        {{ $reporting->class_starting_time ?? 'No Activity' }}
                                        <br>
                                        <span>{{ get_phrase('End Time') }}:</span> {{ $reporting->class_ending_time }}
                                    </p>
                                </div>
                            </div>
                        </td>
                    </tr>
                @endforeach
                </tbody>
            </table>
            </table>
            {{--  {{!! $reporting->appends(request()->all())->links() !!} --}}
        </div>
    @endif


    <script type="text/javascript">
        "use strict";

        function classWiseSection(classId) {
            let url = "{{ route('class_wise_sections', ['id' => ':classId']) }}";
            url = url.replace(":classId", classId);
            $.ajax({
                url: url,
                success: function(response) {
                    $('#section_id').html(response);
                }
            });
        }

        function Export() {

            // Choose the element that our invoice is rendered in.
            const element = document.getElementById("student_list");

            // clone the element
            var clonedElement = element.cloneNode(true);

            // change display of cloned element
            $(clonedElement).css("display", "block");

            // Choose the clonedElement and save the PDF for our user.
            var opt = {
                margin: 1,
                filename: 'student_list_{{ date('y-m-d') }}.pdf',
                image: {
                    type: 'jpeg',
                    quality: 0.98
                },
                html2canvas: {
                    scale: 2
                }
            };

            // New Promise-based usage:
            html2pdf().set(opt).from(clonedElement).save();

            // remove cloned element
            clonedElement.remove();
        }

        function printableDiv(printableAreaDivId) {
            var printContents = document.getElementById(printableAreaDivId).innerHTML;
            var originalContents = document.body.innerHTML;

            document.body.innerHTML = printContents;

            window.print();

            document.body.innerHTML = originalContents;
        }
    </script>


    <!-- End Students area -->
@endsection
