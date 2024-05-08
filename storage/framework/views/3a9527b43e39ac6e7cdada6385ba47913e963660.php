<?php use App\Models\Section; ?>
<div class="eoff-form">
    <form method="POST" enctype="multipart/form-data" class="d-block ajaxForm" action="<?php echo e(route('admin.student.update', ['id' => $user->id])); ?>">
         <?php echo csrf_field(); ?> 
        <div class="form-row">
            <div class="fpb-7">
                <label for="name" class="eForm-label"><?php echo e(get_phrase('Name')); ?></label>
                <input type="text" class="form-control eForm-control" value="<?php echo e($user->name); ?>" id="name" name = "name" required>
            </div>

            <div class="fpb-7">
                <label for="email" class="eForm-label"><?php echo e(get_phrase('Email')); ?></label>
                <input type="email" class="form-control eForm-control" value="<?php echo e($user->email); ?>" id="email" name = "email" required>
            </div>

            <div class="fpb-7">
                <label for="class_id" class="eForm-label"><?php echo e(get_phrase("Class")); ?></label>
                <select name="class_id" id="class_id" class="form-select eForm-select eChoice-multiple-with-remove" required onchange="classWiseSection(this.value)">
                    <option value=""><?php echo e(get_phrase('Select a class')); ?></option>
                    <?php $__currentLoopData = $classes; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $class): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <option value="<?php echo e($class->id); ?>" <?php echo e($student_details['class_id'] == $class->id ?  'selected':''); ?>><?php echo e($class->name); ?></option>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                </select>
            </div>

            <div class="fpb-7">
                <label for="section_id" class="eForm-label"><?php echo e(get_phrase('Section')); ?></label>
                <select name="section_id" id="section_id" class="form-select eForm-select eChoice-multiple-with-remove" required >
                    <?php if($student_details['section_id'] !=""){
                        $sections = Section::get()->where('class_id', $student_details['class_id']); ?>
                        <?php $__currentLoopData = $sections; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $section): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <option value="<?php echo e($section->id); ?>" <?php echo e($student_details['section_id'] == $section->id ?  'selected':''); ?>><?php echo e($section->name); ?></option>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    <?php } else { ?>
                        <option value=""><?php echo e(get_phrase('First select a class')); ?></option>
                    <?php } ?>
                </select>
            </div>

            <?php 
            $info = json_decode($user->user_information);
            ?>

            <div class="fpb-7">
                <label for="birthday" class="eForm-label"><?php echo e(get_phrase('Birthday')); ?><span class="required"></span></label>
                <input type="text" class="form-control eForm-control inputDate" id="birthday" name="birthday" value="<?php echo e(date('m/d/Y', $info->birthday)); ?>" />
                </div>
            </div>

            <div class="fpb-7">
                <label for="gender" class="eForm-label"><?php echo e(get_phrase('Gender')); ?></label>
                <select name="gender" id="gender" class="form-select eForm-select eChoice-multiple-with-remove"  required>
                    <option value=""><?php echo e(get_phrase('Select gender')); ?></option>
                    <option value="Male" <?php echo e($info->gender == 'Male' ?  'selected':''); ?> ><?php echo e(get_phrase('Male')); ?></option>
                    <option value="Female" <?php echo e($info->gender == 'Female' ?  'selected':''); ?>><?php echo e(get_phrase('Female')); ?></option>
                    <option value="Others" <?php echo e($info->gender == 'Others' ?  'selected':''); ?>><?php echo e(get_phrase('Others')); ?></option>
                </select>
            </div>

            <div class="fpb-7">
                <label for="phone" class="eForm-label"><?php echo e(get_phrase('Phone number')); ?></label>
                <input type="text" class="form-control eForm-control" value="<?php echo e($info->phone); ?>" id="phone" name = "phone" placeholder="Provide student number" required>
            </div>
            <div class="fpb-7">
                <label for="blood_group" class="eForm-label"><?php echo e(get_phrase('Blood group')); ?></label>
                <select name="blood_group" id="blood_group" class="form-select eForm-select eChoice-multiple-with-remove">
                    <option value=""><?php echo e(get_phrase('Select a blood group')); ?></option>
                    <option value="a+" <?php echo e($info->blood_group == 'a+' ?  'selected':''); ?> ><?php echo e(get_phrase('A+')); ?></option>
                    <option value="a-" <?php echo e($info->blood_group == 'a-' ?  'selected':''); ?> ><?php echo e(get_phrase('A-')); ?></option>
                    <option value="b+" <?php echo e($info->blood_group == 'b+' ?  'selected':''); ?> ><?php echo e(get_phrase('B+')); ?></option>
                    <option value="b-" <?php echo e($info->blood_group == 'b-' ?  'selected':''); ?> ><?php echo e(get_phrase('B-')); ?></option>
                    <option value="ab+" <?php echo e($info->blood_group == 'ab+' ?  'selected':''); ?> ><?php echo e(get_phrase('AB+')); ?></option>
                    <option value="ab-" <?php echo e($info->blood_group == 'ab-' ?  'selected':''); ?> ><?php echo e(get_phrase('AB-')); ?></option>
                    <option value="o+" <?php echo e($info->blood_group == 'o+' ?  'selected':''); ?> ><?php echo e(get_phrase('O+')); ?></option>
                    <option value="o-" <?php echo e($info->blood_group == 'o-' ?  'selected':''); ?> ><?php echo e(get_phrase('O-')); ?></option>
                </select>
            </div>

            <div class="fpb-7">
                <label for="phone" class="eForm-label"><?php echo e(get_phrase('Address')); ?></label>
                <textarea class="form-control eForm-control" id="address" name = "address" rows="5" placeholder="Provide student address" required><?php echo e($info->address); ?></textarea>
            </div>

            <div class="fpb-7">
              <label for="formFile" class="eForm-label"
                ><?php echo e(get_phrase('Photo')); ?></label
              >
              <input
                class="form-control eForm-control-file"
                id="photo" name="photo" accept="image/*"
                type="file"
              />
            </div>

            <div class="fpb-7 pt-2">
                <button class="btn-form" type="submit"><?php echo e(get_phrase('Update')); ?></button>
            </div>
        </div>
    </form>
</div>

<script type="text/javascript">
    "use strict";
    $(document).ready(function () {
      $(".eChoice-multiple-with-remove").select2();
    });

    function classWiseSection(classId) {
        let url = "<?php echo e(route('admin.class_wise_sections', ['id' => ":classId"])); ?>";
        url = url.replace(":classId", classId);
        $.ajax({
            url: url,
            success: function(response){
                $('#section_id').html(response);
            }
        });
    }

    $(function () {
      $('.inputDate').daterangepicker(
        {
          singleDatePicker: true,
          showDropdowns: true,
          minYear: 1901,
          maxYear: parseInt(moment().format("YYYY"), 10),
        },
        function (start, end, label) {
          var years = moment().diff(start, "years");
        }
      );
    });
</script><?php /**PATH C:\xampp\htdocs\Hemant\OfficeProjects\ikitlabManagementSystem\resources\views/admin/student/edit_student.blade.php ENDPATH**/ ?>