<div class="eoff-form">
    <form method="POST" enctype="multipart/form-data" class="d-block ajaxForm" action="<?php echo e(route('superadmin.create.steam_topic')); ?>">
        <?php echo csrf_field(); ?>
        <div class="form-row">
            <div class="fpb-7">
                <label for="steam_id" class="eForm-label"><?php echo e(get_phrase('Select a STEAM')); ?></label>
                <select name="steam_id" id="steam_id" class="form-select eForm-select eChoice-multiple-with-remove" required onchange="steamWiseSubject(this.value)">
                    <option value=""><?php echo e(get_phrase('Select a STEAM')); ?></option>
                    <?php $__currentLoopData = $steam_lists; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $steam_list): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <option value="<?php echo e($steam_list->id); ?>"><?php echo e($steam_list->title); ?></option>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                </select>
            </div>
            <div class="fpb-7">
                <label for="steam_subject_id"  class="eForm-label"><?php echo e(get_phrase("STEAM Subject")); ?></label>
                <select name="steam_subject_id" id="steam_subject_id" class="form-select eForm-select eChoice-multiple-with-remove" required>
                    <option value=""><?php echo e(get_phrase("First select a STEAM")); ?></option>
                </select>
            </div>
            </div>
            <div class="fpb-7">
                <label for="title" class="eForm-label"><?php echo e(get_phrase('Title')); ?></label>
                <input type="text" class="form-control eForm-control" id="title" name="title" required>
            </div>

            <div class="fpb-7 pt-2">
                <button class="btn-form" type="submit"><?php echo e(get_phrase('Create Topic')); ?></button>
            </div>
    </form>
</div>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script>

    "use strict";

    $(document).ready(function () {
        $(".eChoice-multiple-with-remove").select2();
    });

    function steamWiseSubject(steamId) {
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
<?php /**PATH C:\xampp\htdocs\Hemant\OfficeProjects\ikitlabManagementSystem\resources\views/superadmin/curriculum/steam_topic/add.blade.php ENDPATH**/ ?>