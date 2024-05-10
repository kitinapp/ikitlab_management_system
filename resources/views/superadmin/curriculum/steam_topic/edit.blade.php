<div class="eoff-form">
    <form method="POST" enctype="multipart/form-data" class="d-block ajaxForm" action="{{ route('superadmin.steam_topic.update', ['id' => $steam_topic->id]) }}">
         @csrf
        <div class="form-row">
            <div class="fpb-7">
                <label for="steam_id" class="eForm-label">{{ get_phrase('Select a STEAM') }}</label>
                <select name="steam_id" id="steam_id" class="form-select eForm-select eChoice-multiple-with-remove" required onchange="steamWiseSubjectEdit(this.value)">
                    <option value="">{{ get_phrase('Select a STEAM') }}</option>
                    @foreach($steam_lists as $steam_list)
                        <option value="{{ $steam_list->id }}" {{$steam_list->id == $steam_topic->SteamSubject->steam->id ? 'Selected' : ''}}>{{ $steam_list->title }}</option>
                    @endforeach
                </select>
            </div>
            <div class="fpb-7">
                <label for="steam_subject_id"  class="eForm-label">{{ get_phrase("STEAM Subject") }}</label>
                <select name="steam_subject_id" id="steam_subject_id" class="form-select eForm-select eChoice-multiple-with-remove" required>
                    @php
                        $steam_subjects = \App\Models\SteamSubject::get()->where('steam_id', $steam_topic->steamSubject->steam->id); ?>

                    @endphp
                    @foreach($steam_subjects as $steam_subject)
                        <option value="{{ $steam_subject->id }}"  {{$steam_subject->id == $steam_topic->steamSubject->steam->id ? 'Selected' : ''}}>{{ $steam_topic->SteamSubject->title }}</option>
                    @endforeach
                    <option value="">{{ get_phrase("First select a STEAM") }}</option>
                </select>
            </div>
            <div class="fpb-7">
                <label for="title" class="eForm-label">{{ get_phrase('Title') }}</label>
                <input type="text" class="form-control eForm-control" id="title" name="title" value="{{ $steam_topic->title }}" required>
            </div>

            <div class="fpb-7 pt-2">
                <button class="btn-form" type="submit">{{ get_phrase('Update STEAM') }}</button>
            </div>
        </div>
    </form>
</div>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script>

    "use strict";

    $(document).ready(function () {
        $(".eChoice-multiple-with-remove").select2();
    });

    function steamWiseSubjectEdit(steamId) {
        let url = "{{ route('superadmin.steam_wise_subjects', ['id' => ":steamId"]) }}";
        url = url.replace(":steamId", steamId);
        $.ajax({
            url: url,
            success: function(response){
                $('#steam_subject_id').html(response);
            }
        });
    }
</script>
