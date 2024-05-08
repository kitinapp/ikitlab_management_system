<div class="eoff-form">
    <form method="POST" enctype="multipart/form-data" class="d-block ajaxForm" action="{{ route('superadmin.steam.update', ['id' => $steam->id]) }}">
         @csrf
        <div class="form-row">
            <div class="fpb-7">
                <label for="title" class="eForm-label">{{ get_phrase('Title') }}</label>
                <input type="text" class="form-control eForm-control" id="title" name="title" value="{{ $steam->title }}" required>
            </div>

            <div class="fpb-7 pt-2">
                <button class="btn-form" type="submit">{{ get_phrase('Update STEAM') }}</button>
            </div>
        </div>
    </form>
</div>
