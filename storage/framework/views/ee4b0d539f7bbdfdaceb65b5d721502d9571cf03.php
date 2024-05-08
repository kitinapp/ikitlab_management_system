<div class="eoff-form">
    <form method="POST" enctype="multipart/form-data" class="d-block ajaxForm" action="<?php echo e(route('superadmin.steam_subject.update', ['id' => $steam_subject->id])); ?>">
         <?php echo csrf_field(); ?>
        <div class="form-row">
            <div class="fpb-7">
                <label for="steam_id" class="eForm-label"><?php echo e(get_phrase('Select a STEAM')); ?></label>
                <select name="steam_id" id="steam_id" class="form-select eForm-select eChoice-multiple-with-remove" required>
                    <option value=""><?php echo e(get_phrase('Select a STEAM')); ?></option>
                    <?php $__currentLoopData = $steam_lists; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $steam_list): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <option value="<?php echo e($steam_list->id); ?>" <?php echo e($steam_subject->steam_id == $steam_list->id ? 'Selected' : ''); ?>><?php echo e($steam_list->title); ?></option>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                </select>
            </div>
            <div class="fpb-7">
                <label for="title" class="eForm-label"><?php echo e(get_phrase('Title')); ?></label>
                <input type="text" class="form-control eForm-control" id="title" name="title" value="<?php echo e($steam_subject->title); ?>" required>
            </div>

            <div class="fpb-7 pt-2">
                <button class="btn-form" type="submit"><?php echo e(get_phrase('Update STEAM')); ?></button>
            </div>
        </div>
    </form>
</div>
<?php /**PATH C:\xampp\htdocs\Hemant\OfficeProjects\ikitlabManagementSystem\resources\views/superadmin/curriculum/steam_subject/edit.blade.php ENDPATH**/ ?>