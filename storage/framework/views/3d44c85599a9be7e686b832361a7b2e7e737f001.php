<div class="eoff-form">
    <form method="POST" enctype="multipart/form-data" class="d-block ajaxForm" action="<?php echo e(route('superadmin.steam.update', ['id' => $steam->id])); ?>">
         <?php echo csrf_field(); ?>
        <div class="form-row">
            <div class="fpb-7">
                <label for="title" class="eForm-label"><?php echo e(get_phrase('Title')); ?></label>
                <input type="text" class="form-control eForm-control" id="title" name="title" value="<?php echo e($steam->title); ?>" required>
            </div>

            <div class="fpb-7 pt-2">
                <button class="btn-form" type="submit"><?php echo e(get_phrase('Update STEAM')); ?></button>
            </div>
        </div>
    </form>
</div>
<?php /**PATH C:\xampp\htdocs\Hemant\OfficeProjects\ikitlabManagementSystem\resources\views/superadmin/curriculum/edit.blade.php ENDPATH**/ ?>
