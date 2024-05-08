<div class="eoff-form">
    <form method="POST" enctype="multipart/form-data" class="d-block ajaxForm" action="{{ route('superadmin.steam_subject.update', ['id' => $steam_subject->id]) }}">
         @csrf
        <div class="form-row">
            <div class="fpb-7">
                <label for="steam_id" class="eForm-label">{{ get_phrase('Select a STEAM') }}</label>
                <select name="steam_id" id="steam_id" class="form-select eForm-select eChoice-multiple-with-remove" required>
                    <option value="">{{ get_phrase('Select a STEAM') }}</option>
                    @foreach($steam_lists as $steam_list)
                        <option value="{{ $steam_list->id }}" {{$steam_subject->steam_id == $steam_list->id ? 'Selected' : ''}}>{{ $steam_list->title }}</option>
                    @endforeach
                </select>
            </div>
            <div class="fpb-7">
                <label for="title" class="eForm-label">{{ get_phrase('Title') }}</label>
                <input type="text" class="form-control eForm-control" id="title" name="title" value="{{ $steam_subject->title }}" required>
            </div>

            <div class="fpb-7 pt-2">
                <button class="btn-form" type="submit">{{ get_phrase('Update STEAM') }}</button>
            </div>
        </div>
    </form>
</div>
