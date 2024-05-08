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
            <div class="row fmb-14 justify-content-between align-items-center">
                <label for="class_id" class="col-sm-2 col-eForm-label">{{ get_phrase('Class') }}</label>
                <div class="col-md-10">
                    <select name="class_id" id="class_id" class="form-select eForm-select eChoice-multiple-with-remove" required>
                        <option value="">{{ get_phrase('Select a class') }}</option>
                        @foreach($data['classes'] as $class)
                            <option value="{{ $class->id }}" selected>{{ $class->name }}</option>
                        @endforeach
                    </select>
                </div>
            </div>
            <div class="row fmb-14 justify-content-between align-items-center">
                <label for="present_students" class="col-sm-2 col-eForm-label">{{ get_phrase('Present Students') }}</label>
                <div class="col-sm-10 col-md-9 col-lg-10">
                    <input type="number" class="form-control eForm-control" id="present_students" name="present_students" value="{{$reporting->present_students}}" required>
                </div>
            </div>
            <div class="row fmb-14 justify-content-between align-items-center">
                <label for="subject_id" class="col-sm-2 col-eForm-label">{{ get_phrase('Subjects') }}</label>
                <div class="col-md-10">
                    <select name="subject_id" id="subject_id" class="form-select eForm-select eChoice-multiple-with-remove" required>
                        <option value="">{{ get_phrase('Select a Subject') }}</option>
                        @foreach($data['subjects'] as $subject)
                            <option value="{{ $subject->id }}" selected>{{ $subject->name }}</option>
                        @endforeach
                    </select>
                </div>
            </div>
            <div class="row fmb-14 justify-content-between align-items-center">
                <label for="content_delivered" class="col-sm-2 col-eForm-label">{{ get_phrase('Content Delivered') }}</label>
                <div class="col-sm-10 col-md-9 col-lg-10">
                    <input type="text" class="form-control eForm-control" id="content_delivered" name="content_delivered" value="{{$reporting->content_delivered}}" required>
                </div>
            </div>
            <div class="row fmb-14 justify-content-between align-items-center">
                <label for="activity" class="col-sm-2 col-eForm-label">{{ get_phrase('Activity') }}</label>
                <div class="col-sm-10 col-md-9 col-lg-10">
                    <input type="text" class="form-control eForm-control" id="activity" name="activity" value="{{$reporting->activity}}">
                </div>
            </div>
            <div class="row fmb-14 justify-content-between align-items-center">
                <label for="class_starting_time" class="col-sm-2 col-eForm-label">{{ get_phrase('Class Start Time') }}</label>
                <div class="col-sm-5 col-md-5 col-lg-4">
                    <input type="time" class="form-control eForm-control" id="class_starting_time" name="class_starting_time" value="{{$reporting->class_starting_time}}" required>
                </div>
                <label for="class_ending_time" class="col-sm-2 col-eForm-label">{{ get_phrase('Class End Time') }}</label>
                <div class="col-sm-5 col-md-5 col-lg-4">
                    <input type="time" class="form-control eForm-control" id="class_ending_time" name="class_ending_time" value="{{$reporting->class_ending_time}}" required>
                </div>
            </div>
            <div class="row fmb-14 justify-content-between align-items-center">
                <label for="video" class="col-sm-2 col-eForm-label">{{ get_phrase('Video URL') }}</label>
                <div class="col-sm-10 col-md-9 col-lg-10">
                    <input type="text" class="form-control eForm-control" id="video" name="video" value="{{$reporting->video}}">
                </div>
            </div>
            <div class="row fmb-14 justify-content-between align-items-center">
                <label for="photo" class="col-sm-2 col-eForm-label">{{ get_phrase('Student profile image') }}</label>
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

@endsection
