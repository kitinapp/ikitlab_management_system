

<?php $__env->startSection('content'); ?>


    <?php

    use App\Http\Controllers\CommonController;
    use App\Models\School;
    use App\Models\Section;

    ?>


<div class="eForm-layouts">
    <form method="POST" enctype="multipart/form-data" class="d-block ajaxForm" action="<?php echo e(route('teacher.reporting.create')); ?>">
        <?php echo csrf_field(); ?>
        <div class="row fmb-14 justify-content-between align-items-center">
            <label for="class_id" class="col-sm-2 col-eForm-label"><?php echo e(get_phrase('Class')); ?></label>
            <div class="col-md-10">
                <select name="class_id" id="class_id" class="form-select eForm-select eChoice-multiple-with-remove" required>
                    <option value=""><?php echo e(get_phrase('Select a class')); ?></option>
                    <?php $__currentLoopData = $data['classes']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $class): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <option value="<?php echo e($class->id); ?>"><?php echo e($class->name); ?></option>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                </select>
            </div>
        </div>
        <div class="row fmb-14 justify-content-between align-items-center">
            <label for="present_students" class="col-sm-2 col-eForm-label"><?php echo e(get_phrase('Present Students')); ?></label>
            <div class="col-sm-10 col-md-9 col-lg-10">
                <input type="number" class="form-control eForm-control" id="present_students" name="present_students" required>
            </div>
        </div>
        <div class="row fmb-14 justify-content-between align-items-center">
            <label for="subject_id" class="col-sm-2 col-eForm-label"><?php echo e(get_phrase('Subjects')); ?></label>
            <div class="col-md-10">
                <select name="subject_id" id="subject_id" class="form-select eForm-select eChoice-multiple-with-remove" required>
                    <option value=""><?php echo e(get_phrase('Select a Subject')); ?></option>
                    <?php $__currentLoopData = $data['subjects']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $subject): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <option value="<?php echo e($subject->id); ?>"><?php echo e($subject->name); ?></option>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                </select>
            </div>
        </div>
        <div class="row fmb-14 justify-content-between align-items-center">
            <label for="content_delivered" class="col-sm-2 col-eForm-label"><?php echo e(get_phrase('Content Delivered')); ?></label>
            <div class="col-sm-10 col-md-9 col-lg-10">
                <input type="text" class="form-control eForm-control" id="content_delivered" name="content_delivered" required>
            </div>
        </div>
        <div class="row fmb-14 justify-content-between align-items-center">
            <label for="activity" class="col-sm-2 col-eForm-label"><?php echo e(get_phrase('Activity')); ?></label>
            <div class="col-sm-10 col-md-9 col-lg-10">
                <input type="text" class="form-control eForm-control" id="activity" name="activity">
            </div>
        </div>
        <div class="row fmb-14 justify-content-between align-items-center">
            <label for="class_starting_time" class="col-sm-2 col-eForm-label"><?php echo e(get_phrase('Class Start Time')); ?></label>
            <div class="col-sm-5 col-md-5 col-lg-4">
                <input type="time" class="form-control eForm-control" id="class_starting_time" name="class_starting_time" required>
            </div>
            <label for="class_ending_time" class="col-sm-2 col-eForm-label"><?php echo e(get_phrase('Class End Time')); ?></label>
            <div class="col-sm-5 col-md-5 col-lg-4">
                <input type="time" class="form-control eForm-control" id="class_ending_time" name="class_ending_time" required>
            </div>
        </div>
        <div class="row fmb-14 justify-content-between align-items-center">
            <label for="video" class="col-sm-2 col-eForm-label"><?php echo e(get_phrase('Video URL')); ?></label>
            <div class="col-sm-10 col-md-9 col-lg-10">
                <input type="text" class="form-control eForm-control" id="video" name="video">
            </div>
        </div>
        <div class="row fmb-14 justify-content-between align-items-center">
            <label for="photo" class="col-sm-2 col-eForm-label"><?php echo e(get_phrase('Student profile image')); ?></label>
            <div class="col-md-10">
                <input class="form-control eForm-control-file" type="file" id="photo" name="photo[]" multiple accept="image/*">
            </div>
        </div>

        <div class="row">
            <div class="col-sm-10 offset-sm-2">
                <button type="submit" class="btn-form"><?php echo e(get_phrase('Add Report')); ?></button>
            </div>
        </div>
    </form>
</div>

<?php $__env->stopSection(); ?>

<?php echo $__env->make('teacher.navigation', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\Hemant\OfficeProjects\ikitlabManagementSystem\resources\views/teacher/reporting/add_single_report.blade.php ENDPATH**/ ?>