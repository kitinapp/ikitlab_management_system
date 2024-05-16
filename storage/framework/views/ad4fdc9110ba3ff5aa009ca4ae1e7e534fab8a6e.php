

<?php $__env->startSection('content'); ?>

<?php

use App\Http\Controllers\CommonController;
use App\Models\School;
use App\Models\Section;
use Carbon\Carbon;


?>

<div class="mainSection-title">
    <div class="row">
      <div class="col-12">
        <div
          class="d-flex justify-content-between align-items-center flex-wrap gr-15"
        >
          <div class="d-flex flex-column">
            <h4><?php echo e(get_phrase('Reports')); ?></h4>
            <ul class="d-flex align-items-center eBreadcrumb-2">
              <li><a href="#"><?php echo e(get_phrase('Home')); ?></a></li>
              <li><a href="#"><?php echo e(get_phrase('Reporting')); ?></a></li>
              <li><a href="#"><?php echo e(get_phrase('Reporting List')); ?></a></li>
            </ul>
          </div>
          <div class="export-btn-area">
            <a href="<?php echo e(route('teacher.reporting.open_modal')); ?>" class="export_btn"><?php echo e(get_phrase('Create Report')); ?></a>
          </div>
        </div>
      </div>
    </div>
</div>
<!-- Start Students area -->
<div class="row">
    <div class="col-12">
        <div class="eSection-wrap-2">
          <!-- Search and filter -->
            <div
              class="search-filter-area d-flex justify-content-md-between justify-content-center align-items-center flex-wrap gr-15"
            >
              <form action="<?php echo e(route('teacher.reporting')); ?>">
                <div
                  class="search-input d-flex justify-content-start align-items-center"
                >
                  <span>
                    <svg
                      xmlns="http://www.w3.org/2000/svg"
                      width="16"
                      height="16"
                      viewBox="0 0 16 16"
                    >
                      <path
                        id="Search_icon"
                        data-name="Search icon"
                        d="M2,7A4.951,4.951,0,0,1,7,2a4.951,4.951,0,0,1,5,5,4.951,4.951,0,0,1-5,5A4.951,4.951,0,0,1,2,7Zm12.3,8.7a.99.99,0,0,0,1.4-1.4l-3.1-3.1A6.847,6.847,0,0,0,14,7,6.957,6.957,0,0,0,7,0,6.957,6.957,0,0,0,0,7a6.957,6.957,0,0,0,7,7,6.847,6.847,0,0,0,4.2-1.4Z"
                        fill="#797c8b"
                      />
                    </svg>
                  </span>
                  <input
                    type="text"
                    id="search"
                    name="search"
                    value="<?php echo e($search); ?>"
                    placeholder="Search user"
                    class="form-control"
                  />
                  <?php if($class_id != ''): ?>
                  <input type="hidden" name="class_id" id="class_id" value="<?php echo e($class_id); ?>">
                  <?php endif; ?>
                  <?php if($section_id != ''): ?>
                  <input type="hidden" name="section_id" id="section_id" value="<?php echo e($section_id); ?>">
                  <?php endif; ?>
                </div>
              </form>
              <div class="filter-export-area d-flex align-items-center">
                <div class="position-relative">
                  <button
                    class="eBtn-3 dropdown-toggle"
                    type="button"
                    id="defaultDropdown"
                    data-bs-toggle="dropdown"
                    data-bs-auto-close="true"
                    aria-expanded="false"
                  >
                    <span class="pr-10">
                      <svg
                        xmlns="http://www.w3.org/2000/svg"
                        width="14.028"
                        height="12.276"
                        viewBox="0 0 14.028 12.276"
                      >
                        <path
                          id="filter-solid"
                          d="M.106,32.627A1.1,1.1,0,0,1,1.1,32H12.934a1.092,1.092,0,0,1,.989.627,1.054,1.054,0,0,1-.164,1.164l-4.99,6.126V43.4a.877.877,0,0,1-1.4.7L5.612,42.786a.871.871,0,0,1-.351-.7V39.917L.248,33.79a1.1,1.1,0,0,1-.142-1.164Z"
                          transform="translate(0 -32)"
                          fill="#00a3ff"
                        />
                      </svg>
                    </span>
                    <?php echo e(get_phrase('Filter')); ?>

                  </button>
                  <div
                    class="dropdown-menu dropdown-menu-end filter-options"
                    aria-labelledby="defaultDropdown"
                  >
                    <h4 class="title"><?php echo e(get_phrase('Filter Options')); ?></h4>
                    <form action="<?php echo e(route('teacher.reporting')); ?>">
                      <div class="filter-option d-flex flex-column">
                        <?php if($search != ''): ?>
                        <input type="hidden" name="search" id="search" value="<?php echo e($search); ?>">
                        <?php endif; ?>
                        <div>
                          <label for="class_id" class="eForm-label"
                            ><?php echo e(get_phrase('Class')); ?></label
                          >
                          <select
                            class="form-select" name="class_id"
                            id="class_id" onchange="classWiseSection(this.value)" required
                          >
                            <option value=""><?php echo e(get_phrase('Select a class')); ?></option>
                            <?php $__currentLoopData = $classes; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $class): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <option value="<?php echo e($class->id); ?>" <?php echo e($class_id == $class->id ?  'selected':''); ?>><?php echo e($class->name); ?></option>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                          </select>
                        </div>
                        <div>
                          <label for="section_id" class="eForm-label"
                            ><?php echo e(get_phrase('Section')); ?></label
                          >
                          <select
                            class="form-select"
                            name="section_id" id="section_id"
                            data-placeholder="Type to search..."
                          >
                            <?php if($class_id !=""){
                                $sections = Section::get()->where('class_id', $class_id); ?>
                                <?php $__currentLoopData = $sections; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $section): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <option value="<?php echo e($section->id); ?>" <?php echo e($section_id == $section->id ?  'selected':''); ?>><?php echo e($section->name); ?></option>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            <?php } else { ?>
                                <option value=""><?php echo e(get_phrase('First select a class')); ?></option>
                            <?php } ?>
                          </select>
                        </div>
                      </div>
                      <div
                        class="filter-button d-flex justify-content-end align-items-center"
                      >
                        <a class="form-group">
                          <button class="eBtn eBtn btn-primary" type="submit"><?php echo e(get_phrase('Apply')); ?></button>
                        </a>
                      </div>
                    </form>
                  </div>
                </div>
                <!-- Export Button -->
                <?php if(count($reportings) > 0): ?>
                <div class="position-relative">
                  <button
                    class="eBtn-3 dropdown-toggle"
                    type="button"
                    id="defaultDropdown"
                    data-bs-toggle="dropdown"
                    data-bs-auto-close="true"
                    aria-expanded="false"
                  >
                    <span class="pr-10">
                      <svg
                        xmlns="http://www.w3.org/2000/svg"
                        width="12.31"
                        height="10.77"
                        viewBox="0 0 10.771 12.31"
                      >
                        <path
                          id="arrow-right-from-bracket-solid"
                          d="M3.847,1.539H2.308a.769.769,0,0,0-.769.769V8.463a.769.769,0,0,0,.769.769H3.847a.769.769,0,0,1,0,1.539H2.308A2.308,2.308,0,0,1,0,8.463V2.308A2.308,2.308,0,0,1,2.308,0H3.847a.769.769,0,1,1,0,1.539Zm8.237,4.39L9.007,9.007A.769.769,0,0,1,7.919,7.919L9.685,6.155H4.616a.769.769,0,0,1,0-1.539H9.685L7.92,2.852A.769.769,0,0,1,9.008,1.764l3.078,3.078A.77.77,0,0,1,12.084,5.929Z"
                          transform="translate(0 12.31) rotate(-90)"
                          fill="#00a3ff"
                        />
                      </svg>
                    </span>
                    <?php echo e(get_phrase('Export')); ?>

                  </button>
                  <ul
                    class="dropdown-menu dropdown-menu-end eDropdown-menu-2"
                  >
                    <li>
                        <a class="dropdown-item" id="pdf" href="javascript:;" onclick="Export()"><?php echo e(get_phrase('PDF')); ?></a>
                    </li>
                    <li>
                        <a class="dropdown-item" id="print" href="javascript:;" onclick="printableDiv('student_list')"><?php echo e(get_phrase('Print')); ?></a>
                    </li>
                  </ul>
                </div>
                <?php endif; ?>
              </div>
            </div>
            <?php if(count($reportings) > 0): ?>
            <!-- Table -->
            <div class="table-responsive">
              <table class="table eTable eTable-2">
                <thead>
                  <tr>
                    <th scope="col">#</th>
                    <th scope="col"><?php echo e(get_phrase('Date')); ?></th>
                    <th scope="col"><?php echo e(get_phrase('Students Info')); ?></th>
                    <th scope="col"><?php echo e(get_phrase('Content Delivered')); ?></th>
                    <th scope="col"><?php echo e(get_phrase('Media')); ?></th>
                    <th scope="col"><?php echo e(get_phrase('Options')); ?></th>
                </thead>
                <tbody>
                    <?php $__currentLoopData = $reportings; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $reporting): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <?php
//                        $reporting = DB::table('$reportings')->where('id', $reporting->user_id)->first();
//                        $reporting = DB::table('$reportings');

                        $user_image = get_user_image($reporting->teacher_id);
                    ?>
                      <tr>
                        <th scope="row">
                          <p class="row-number"><?php echo e($reportings->firstItem() + $key); ?></p>
                        </th>
                        <td>
                              <div
                                  class="dAdmin_profile d-flex align-items-center min-w-200px"
                              >
                                  <div class="dAdmin_profile_name dAdmin_info_name">
                                      <p>
                                          <span><?php echo e(get_phrase('Date')); ?>:</span> <?php echo e(date('d-m-Y', strtotime($reporting->created_at ))); ?>

                                          <br>
                                          <span><?php echo e(get_phrase('Day')); ?>:</span> <?php echo e(Carbon::parse($reporting->created_at)->format('l')); ?>

                                          <br>
                                          <span><?php echo e(get_phrase('Start Time')); ?>:</span> <?php echo e($reporting->class_starting_time ?? 'No Activity'); ?>

                                          <br>
                                          <span><?php echo e(get_phrase('End Time')); ?>:</span> <?php echo e($reporting->class_ending_time); ?>

                                      </p>
                                  </div>
                              </div>
                          </td>
                        <td>
                          <div
                            class="dAdmin_profile d-flex align-items-center min-w-200px"
                          >
                            <div class="dAdmin_profile_name dAdmin_info_name">
                              <p>
                                <span><?php echo e(get_phrase('Class')); ?>:</span> <?php echo e($reporting->class_name); ?>

                                <br>
                                <span><?php echo e(get_phrase('Section')); ?>:</span> <?php echo e($reporting->section->name); ?>

                                  <br>
                                  <span><?php echo e(get_phrase('Present Students')); ?>:</span> <?php echo e($reporting->present_students); ?>

                                  <br>
                                  <span><?php echo e(get_phrase('Total Students')); ?>:</span> <?php echo e($reporting->class->total_students); ?>

                              </p>
                            </div>
                          </div>
                        </td>
                        <td>
                              <div
                                  class="dAdmin_profile d-flex align-items-center min-w-200px"
                              >
                                  <div class="dAdmin_profile_name dAdmin_info_name">
                                      <p>
                                          <span><?php echo e(get_phrase('STEAM')); ?>:</span> <?php echo e($reporting->steam->title); ?>

                                          <br>
                                          <span><?php echo e(get_phrase('Subject')); ?>:</span> <?php echo e($reporting->steamSubject->title); ?>

                                          <br>
                                          <span><?php echo e(get_phrase('Topic')); ?>:</span> <?php echo e($reporting->steamTopic->title); ?>

                                          <br>
                                          <span><?php echo e(get_phrase('Chapter')); ?>:</span> <?php echo e($reporting->steamChapter->title); ?>

                                          <br>
                                          <?php echo $reporting->activity == null ? '' : "<span>" . get_phrase('Activity') . ":</span> " . trim($reporting->activity); ?>

                                      </p>
                                  </div>
                              </div>
                        </td>
                        <td>
                              <div class="dAdmin_info_name min-w-250px">
                                  <?php
                                      // Convert the string into an array
                                      $photoArray = json_decode($reporting->photo);
                                  ?>

                                  <?php if(is_array($photoArray) && count($photoArray) > 0): ?>

                                      <marquee behavior="scroll" direction="left" onmouseover="this.stop();" onmouseout="this.start();">
                                          <?php $__currentLoopData = $photoArray; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $photo): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                  <a target="_blank" href="<?php echo e(asset('public/assets/uploads/reporting-images/' . trim($photo))); ?>">
                                                      <img class="mx-2" width="80" height="auto" src="<?php echo e(asset('public/assets/uploads/reporting-images/' . trim($photo))); ?>" alt="">
                                                  </a>

                                          <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                      </marquee>
                                  <?php else: ?>
                                      
                                      <p>No Media Found</p>
                                  <?php endif; ?>









                              </div>
                          </td>
                        <td>
                          <div class="adminTable-action">
                            <button
                              type="button"
                              class="eBtn eBtn-black dropdown-toggle table-action-btn-2"
                              data-bs-toggle="dropdown"
                              aria-expanded="false"
                            >
                              <?php echo e(get_phrase('Actions')); ?>

                            </button>
                            <ul
                              class="dropdown-menu dropdown-menu-end eDropdown-menu-2 eDropdown-table-action"
                            >
                              <li>
                                <a class="dropdown-item" href="javascript:;" onclick="largeModal('<?php echo e(route('teacher.reporting_card', ['id' => $reporting->id])); ?>', '<?php echo e(get_phrase('Generate Report')); ?>')"><?php echo e(get_phrase('Generate Report')); ?></a>
                              </li>

                              <li>
                                <a class="dropdown-item" href="<?php echo e(route('teacher.reporting_edit_modal', ['id' => $reporting->id])); ?>" onclick="rightModal('<?php echo e(route('teacher.reporting_edit_modal', ['id' => $reporting->id])); ?>', 'Edit Student')"><?php echo e(get_phrase('Edit')); ?></a>
                              </li>
                              <li>
                                <a class="dropdown-item" href="javascript:;" onclick="confirmModal('<?php echo e(route('teacher.reporting.delete', ['id' => $reporting->id])); ?>', 'undefined');"><?php echo e(get_phrase('Delete')); ?></a>
                              </li>
                            </ul>
                          </div>
                        </td>
                      </tr>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                </tbody>
              </table>

              <div
                  class="admin-tInfo-pagi d-flex justify-content-md-between justify-content-center align-items-center flex-wrap gr-15"
                >
                  <p class="admin-tInfo"><?php echo e(get_phrase('Showing').' 1 - '.count($reportings).' '.get_phrase('from').' '.$reportings->total().' '.get_phrase('data')); ?></p>
                  <div class="admin-pagi">
                    <?php echo $reportings->appends(request()->all())->links(); ?>

                  </div>
                </div>
              </div>

            </div>
            <?php else: ?>
            <div class="empty_box center">
              <img class="mb-3" width="150px" src="<?php echo e(asset('public/assets/images/empty_box.png')); ?>" />
              <br>
              <span class=""><?php echo e(get_phrase('No data found')); ?></span>
            </div>
            <?php endif; ?>
        </div>
    </div>
</div>

<?php if(count($reportings) > 0): ?>
<!-- Table -->
<div class="table-responsive student_list display-none-view" id="student_list">
      <table class="table eTable eTable-2">
          <thead>
          <tr>
              <th scope="col">#</th>
              <th scope="col"><?php echo e(get_phrase('Date')); ?></th>
              <th scope="col"><?php echo e(get_phrase('Students Info')); ?></th>
              <th scope="col"><?php echo e(get_phrase('Content Delivered')); ?></th>
              <th scope="col"><?php echo e(get_phrase('Class Time')); ?></th>
          </thead>
          <tbody>
          <?php $__currentLoopData = $reportings; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $reporting): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                  <?php
//                        $reporting = DB::table('$reportings')->where('id', $reporting->user_id)->first();
//                        $reporting = DB::table('$reportings');

                  $user_image = get_user_image($reporting->teacher_id);
                  ?>
              <tr>
                  <th scope="row">
                      <p class="row-number"><?php echo e($reportings->firstItem() + $key); ?></p>
                  </th>
                  <td>
                      <div
                          class="dAdmin_profile d-flex align-items-center min-w-200px"
                      >
                          <div class="dAdmin_profile_name dAdmin_info_name">
                              <p>
                                  <span><?php echo e(get_phrase('Day')); ?>:</span> <?php echo e(Carbon::parse($reporting->created_at)->format('l')); ?>

                                  <br>
                                  <span><?php echo e(get_phrase('Date')); ?>:</span> <?php echo e(date('d-m-Y', strtotime($reporting->created_at ))); ?>

                              </p>
                          </div>
                      </div>
                  </td>
                  <td>
                      <div
                          class="dAdmin_profile d-flex align-items-center min-w-200px"
                      >
                          
                          
                          
                          
                          
                          
                          
                          
                          
                          
                          <div class="dAdmin_profile_name dAdmin_info_name">
                              <p>
                                  <span><?php echo e(get_phrase('Class')); ?>:</span> <?php echo e($reporting->class_name); ?>

                                  <br>
                                  <span><?php echo e(get_phrase('Students')); ?>:</span> <?php echo e($reporting->present_students  . "/" . $reporting->total_students_from_class); ?>

                              </p>
                          </div>
                      </div>
                  </td>
                  <td>
                      <div
                          class="dAdmin_profile d-flex align-items-center min-w-200px"
                      >
                          <div class="dAdmin_profile_name dAdmin_info_name">
                              <p>
                                  <span><?php echo e(get_phrase('Activity')); ?>:</span> <?php echo e($reporting->activity ?? 'No Activity'); ?>

                                  <br>
                                  <span><?php echo e(get_phrase('Content')); ?>:</span> <?php echo e($reporting->content_delivered); ?>

                              </p>
                          </div>
                      </div>
                  </td>
                  <td>
                      <div
                          class="dAdmin_profile d-flex align-items-center min-w-200px"
                      >
                          <div class="dAdmin_profile_name dAdmin_info_name">
                              <p>
                                  <span><?php echo e(get_phrase('Start Time')); ?>:</span> <?php echo e($reporting->class_starting_time ?? 'No Activity'); ?>

                                  <br>
                                  <span><?php echo e(get_phrase('End Time')); ?>:</span> <?php echo e($reporting->class_ending_time); ?>

                              </p>
                          </div>
                      </div>
                  </td>
              </tr>
          <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
          </tbody>
      </table>
  </table>

</div>
<?php endif; ?>


<script type="text/javascript">

  "use strict";

  function classWiseSection(classId) {
    let url = "<?php echo e(route('class_wise_sections', ['id' => ":classId"])); ?>";
    url = url.replace(":classId", classId);
    $.ajax({
        url: url,
        success: function(response){
            $('#section_id').html(response);
        }
    });
  }

  function Export() {

      // Choose the element that our invoice is rendered in.
      const element = document.getElementById("student_list");

      // clone the element
      var clonedElement = element.cloneNode(true);

      // change display of cloned element
      $(clonedElement).css("display", "block");

      // Choose the clonedElement and save the PDF for our user.
    var opt = {
      margin:       1,
      filename:     'student_list_<?php echo e(date("y-m-d")); ?>.pdf',
      image:        { type: 'jpeg', quality: 0.98 },
      html2canvas:  { scale: 2 }
    };

    // New Promise-based usage:
    html2pdf().set(opt).from(clonedElement).save();

      // remove cloned element
      clonedElement.remove();
  }

  function printableDiv(printableAreaDivId) {
    var printContents = document.getElementById(printableAreaDivId).innerHTML;
    var originalContents = document.body.innerHTML;

    document.body.innerHTML = printContents;

    window.print();

    document.body.innerHTML = originalContents;
  }

</script>


<!-- End Students area -->
<?php $__env->stopSection(); ?>

<?php echo $__env->make('teacher.navigation', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\Hemant\OfficeProjects\ikitlabManagementSystem\resources\views/teacher/reporting/report_list.blade.php ENDPATH**/ ?>