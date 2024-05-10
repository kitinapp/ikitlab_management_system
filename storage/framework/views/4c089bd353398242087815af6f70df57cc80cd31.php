<div class="eoff-form">
    <form method="POST" enctype="multipart/form-data" class="d-block ajaxForm" action="<?php echo e(route('superadmin.steam_topic.update', ['id' => $steam_topic->id])); ?>">
         <?php echo csrf_field(); ?>
        <div class="form-row">
            <div class="fpb-7">
                <label for="steam_id" class="eForm-label"><?php echo e(get_phrase('Select a STEAM')); ?></label>
                <select name="steam_id" id="steam_id" class="form-select eForm-select eChoice-multiple-with-remove" required onchange="steamWiseSubjectEdit(this.value)">
                    <option value=""><?php echo e(get_phrase('Select a STEAM')); ?></option>
                    <?php $__currentLoopData = $steam_lists; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $steam_list): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <option value="<?php echo e($steam_list->id); ?>" <?php echo e($steam_list->id == $steam_topic->SteamSubject->steam->id ? 'Selected' : ''); ?>><?php echo e($steam_list->title); ?></option>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                </select>
            </div>
            <div class="fpb-7">
                <label for="steam_subject_id"  class="eForm-label"><?php echo e(get_phrase("STEAM Subject")); ?></label>
                <select name="steam_subject_id" id="steam_subject_id" class="form-select eForm-select eChoice-multiple-with-remove" required>
                    <?php
                        $steam_subjects = \App\Models\SteamSubject::get()->where('steam_id', $steam_topic->steamSubject->steam->id); ?>

                    ?>
                    <?php $__currentLoopData = $steam_subjects; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $steam_subject): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <option value="<?php echo e($steam_subject->id); ?>"  <?php echo e($steam_subject->id == $steam_topic->steamSubject->steam->id ? 'Selected' : ''); ?>><?php echo e($steam_topic->SteamSubject->title); ?></option>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    <option value=""><?php echo e(get_phrase("First select a STEAM")); ?></option>
                </select>
            </div>
            <div class="fpb-7">
                <label for="title" class="eForm-label"><?php echo e(get_phrase('Title')); ?></label>
                <input type="text" class="form-control eForm-control" id="title" name="title" value="<?php echo e($steam_topic->title); ?>" required>
            </div>

            <div class="fpb-7 pt-2">
                <button class="btn-form" type="submit"><?php echo e(get_phrase('Update STEAM')); ?></button>
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
        let url = "<?php echo e(route('superadmin.steam_wise_subjects', ['id' => ":steamId"])); ?>";
        url = url.replace(":steamId", steamId);
        $.ajax({
            url: url,
            success: function(response){
                $('#steam_subject_id').html(response);
            }
        });
    }
</script>
<?php /**PATH C:\xampp\htdocs\Hemant\OfficeProjects\ikitlabManagementSystem\resources\views/superadmin/curriculum/steam_topic/edit.blade.php ENDPATH**/ ?>