@extends('teacher.navigation')

@section('content')


    <?php

    use App\Http\Controllers\CommonController;
    use App\Models\School;
    use App\Models\Section;

    ?>


    <div class="eForm-layouts">
        <form method="POST" enctype="multipart/form-data" class="d-block ajaxForm" action="{{ route('teacher.reporting.update', ['id' => $reporting->id]) }}">
            @csrf
            <div class="row fmb-14  justify-content-between align-items-center">
                <label for="class_id" class="col-sm-2 col-eForm-label">{{ get_phrase('Class') }}</label>
                <div class="col-sm-10 col-md-9 col-lg-10 ">
                    <select name="class_id" id="class_id" class="form-select eForm-select eChoice-multiple-with-remove" required onchange="classWiseSection(this.value)">
                        <option value="">{{ get_phrase("Select a class") }}</option>
                        @foreach($data['classes'] as $class)
                            <option value="{{ $class->id }}"  {{$class->id == $reporting->class_id ? 'Selected' : ''}}>{{ $class->name }}</option>
                        @endforeach
                    </select>
                </div>
            </div>
            <div class="row fmb-14  justify-content-between align-items-center">
                <label for="section_id"  class="col-sm-2 col-eForm-label eForm-label">{{ get_phrase("Section") }}</label>
                <div class="col-sm-10 col-md-9 col-lg-10 ">

                    <select name="section_id" id="section_id" class="form-select eForm-select eChoice-multiple-with-remove" required >
                        @php
                            $class_sections = \App\Models\Section::get()->where('id', $reporting->section->id); ?>
                        @endphp
                        @foreach($class_sections as $class_section)
                            <option value="{{ $class_section->id }}"  {{$class_section->id == $reporting->section->id ? 'selected' : ''}}>{{ $reporting->section->name}}</option>
                        @endforeach
                        <option value="">{{ get_phrase("First select a Subject") }}</option>
                        <option value="">{{ get_phrase("First select a class") }}</option>
                    </select>
                </div>
            </div>
            <div class="row fmb-14 justify-content-between align-items-center">
                <label for="present_students" class="col-sm-2 col-eForm-label">{{ get_phrase('Present Students') }}</label>
                <div class="col-sm-10 col-md-9 col-lg-10">
                    <input type="number" class="form-control eForm-control" id="present_students" name="present_students" required value="{{$reporting->present_students}}">
                </div>
            </div>
            <div class="row fmb-14 justify-content-between align-items-center">
                <label for="subject_id" class="col-sm-2 col-eForm-label">{{ get_phrase('Subjects') }}</label>
                <div class="col-md-10">
                    <select name="subject_id" id="subject_id" class="form-select eForm-select eChoice-multiple-with-remove" required>
                        <option value="">{{ get_phrase('Select a Subject') }}</option>
                        @foreach($data['subjects'] as $subject)
                            <option value="{{ $subject->id }}" {{$subject->id == $reporting->subject_id ? 'Selected' : ''}}>{{ $subject->name }}</option>
                        @endforeach
                    </select>
                </div>
            </div>

            <div class="row fmb-14  justify-content-between align-items-center">
                <label for="steam_id" class="col-sm-2 col-eForm-label">{{ get_phrase('STEAM') }}</label>
                <div class="col-sm-10 col-md-9 col-lg-10 ">
                    <select name="steam_id" id="steam_id" class="form-select eForm-select eChoice-multiple-with-remove" required onchange="steamWiseSubjectForReporting(this.value)">
                        <option value="">{{ get_phrase("Select a STEAM") }}</option>
                        @foreach($steam_lists as $steam_list)
                            <option value="{{ $steam_list->id }}"  {{$steam_list->id == $reporting->steam_id ? 'Selected' : ''}}>{{ $steam_list->title }}</option>
                        @endforeach
                    </select>
                </div>
            </div>
            <div class="row fmb-14 justify-content-between align-items-center">
                <label for="steam_subject_id" class="col-sm-2 col-eForm-label">{{ get_phrase('STEAM Subject') }}</label>
                <div class="col-sm-10 col-md-9 col-lg-10 ">
                    <div class="div">
                        <select name="steam_subject_id" id="steam_subject_id" class="form-select eForm-select eChoice-multiple-with-remove" required onchange="subjectWiseTopicForReporting(this.value)">

                            @php
                                $steam_subjects = \App\Models\SteamSubject::get()->where('id', $reporting->steamSubject->id); ?>
                            @endphp
                            @foreach($steam_subjects as $steam_subject)
                                <option value="{{ $steam_subject->id }}"  {{$steam_subject->id == $reporting->steamSubject->id ? 'selected' : ''}}>{{ $reporting->steamSubject->title}}</option>
                            @endforeach
                            <option value="">{{ get_phrase("First select a STEAM") }}</option>
                        </select>
                    </div>

                </div>
            </div>
            <div class="row fmb-14 justify-content-between align-items-center">
                <label for="steam_topic_id" class="col-sm-2 col-eForm-label">{{ get_phrase('STEAM Topic"') }}</label>
                <div class="col-sm-10 col-md-9 col-lg-10 ">
                    <select name="steam_topic_id" id="steam_topic_id" class="form-select eForm-select eChoice-multiple-with-remove" required onchange="topicWiseChapterForReporting(this.value)">
                        @php
                            $steam_topics = \App\Models\SteamTopic::get()->where('id', $reporting->steamTopic->id); ?>
                        @endphp
                        @foreach($steam_topics as $steam_topic)
                            <option value="{{ $steam_topic->id }}"  {{$steam_topic->id == $reporting->steamTopic->id ? 'selected' : ''}}>{{ $reporting->steamTopic->title}}</option>
                        @endforeach
                        <option value="">{{ get_phrase("First select a Subject") }}</option>

                    </select>
                </div>
            </div>
            <div class="row fmb-14 justify-content-between align-items-center">

                <label for="steam_chapter_id" class="col-sm-2 col-eForm-label">{{ get_phrase('STEAM Chapter') }}</label>
                <div class="col-sm-10 col-md-9 col-lg-10 ">
                    <select name="steam_chapter_id" id="steam_chapter_id" class="form-select eForm-select eChoice-multiple-with-remove" required onchange="topicWiseChapterForReporting(this.value)">

                        @php
                            $steam_chapters = \App\Models\SteamChapter::get()->where('id', $reporting->steamChapter->id); ?>
                        @endphp
                        @foreach($steam_chapters as $steam_chapter)
                            <option value="{{ $steam_chapter->id }}"  {{$steam_chapter->id == $reporting->steamChapter->id ? 'selected' : ''}}>{{ $reporting->steamChapter->title}}</option>
                        @endforeach
                        <option value="">{{ get_phrase("First select a Topic") }}</option>
                    </select>
                </div>
            </div>

            <div class="row fmb-14 justify-content-between align-items-center">
                <label for="activity" class="col-sm-2 col-eForm-label">{{ get_phrase('Activity') }}</label>
                <div class="col-sm-10 col-md-9 col-lg-10">
                    <input type="text" class="form-control eForm-control" id="activity" name="activity" value="{{$reporting->activity}}">
                </div>
            </div>
            <div class="row fmb-14 justify-content-between align-items-center">
                <label for="remark" class="col-sm-2 col-eForm-label">{{ get_phrase('Remark') }}</label>
                <div class="col-sm-10 col-md-9 col-lg-10">
                    <input type="text" class="form-control eForm-control" id="remark" name="remark" value="{{$reporting->remark}}">
                </div>
            </div>
            <div class="row fmb-14 justify-content-between align-items-center">
                <label for="class_starting_time" class="col-sm-2 col-eForm-label">{{ get_phrase('Class Start Time') }}</label>
                <div class="col-sm-5 col-md-5 col-lg-4">
                    <input type="time" class="form-control eForm-control" id="class_starting_time" name="class_starting_time" required value="{{$reporting->class_starting_time}}">
                </div>
                <label for="class_ending_time" class="col-sm-2 col-eForm-label">{{ get_phrase('Class End Time') }}</label>
                <div class="col-sm-5 col-md-5 col-lg-4">
                    <input type="time" class="form-control eForm-control" id="class_ending_time" name="class_ending_time" required value="{{$reporting->class_ending_time}}">
                </div>
            </div>
            <div class="row fmb-14 justify-content-between align-items-center">
                <label for="video" class="col-sm-2 col-eForm-label">{{ get_phrase('Video URL') }}</label>
                <div class="col-sm-10 col-md-9 col-lg-10">
                    <input type="text" class="form-control eForm-control" id="video" name="video" value="{{$reporting->video}}">
                </div>
            </div>
            <div class="row fmb-14 justify-content-between align-items-center">
                <label for="photo" class="col-sm-2 col-eForm-label">{{ get_phrase('Images') }}</label>
                <div class="col-md-10">
                    <input class="form-control eForm-control-file" type="file" id="photo" name="photo[]" multiple accept="image/*">
                </div>
            </div>

            <div class="row">
                <div class="col-sm-10 offset-sm-2">
                    <button type="submit" class="btn-form">{{ get_phrase('Update Report') }}</button>
                </div>
            </div>
        </form>
    </div>


    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    <script type="text/javascript">

        "use strict";

        $(document).ready(function () {
            $(".eChoice-multiple-with-remove").select2();
        });

        function classWiseSection(classId) {
            let url = "{{ route('class_wise_sections', ['id' => ":classId"]) }}";
            url = url.replace(":classId", classId);
            $.ajax({
                url: url,
                success: function(response){
                    $('#section_id').html(response);
                }
            });
        }

        $(document).ready(function () {
            $(".eChoice-multiple-with-remove").select2();
        });

        function steamWiseSubjectForReporting(steamId) {
            let url = "{{ route('teacher.steam_wise_subjects', ['id' => ":steamId"]) }}";
            url = url.replace(":steamId", steamId);
            $.ajax({
                url: url,
                success: function(response){
                    $('#steam_subject_id').html(response);
                }
            });
        }

        function subjectWiseTopicForReporting(topicId) {
            let url = "{{ route('teacher.subject_wise_topics', ['id' => ":topicId"]) }}";
            url = url.replace(":topicId", topicId);
            $.ajax({
                url: url,
                success: function(response){
                    $('#steam_topic_id').html(response);
                }
            });
        }

        function topicWiseChapterForReporting(chapterId) {
            let url = "{{ route('teacher.topic_wise_chapter', ['id' => ":chapterId"]) }}";
            url = url.replace(":chapterId", chapterId);
            $.ajax({
                url: url,
                success: function(response){
                    $('#steam_chapter_id').html(response);
                }
            });
        }

    </script>
@endsection
