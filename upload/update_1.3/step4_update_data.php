//database migration
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

if (!Schema::hasColumn('packages', 'price')) {
    Schema::table('packages', function (Blueprint $table1) {
        $table1->string('price')->change();
    });
}

if (!Schema::hasColumn('schools', 'phone')) {
    Schema::table('schools', function (Blueprint $table2) {
        $table2->string('phone')->change();
    });
}

$data['key'] = 'help_link';
$data['value'] = 'http://support.creativeitem.com/';
DB::table('global_settings')->insert($data);

$data['key'] = 'youtube_api_key';
$data['value'] = 'youtube-api-key';
DB::table('global_settings')->insert($data);

$data['key'] = 'vimeo_api_key';
$data['value'] = 'vimeo_api_key';
DB::table('global_settings')->insert($data);

$data['key'] = 'banner_title';
$data['value'] = 'Bringing Excellence To Students';
DB::table('global_settings')->insert($data);


$data['key'] = 'banner_subtitle';
$data['value'] = 'Empowering and inspiring all students to excel as life long learners';
DB::table('global_settings')->insert($data);

$data['key'] = 'facebook_link';
$data['value'] = 'https://www.facebook.com/CreativeitemApps';
DB::table('global_settings')->insert($data);

$data['key'] = 'twitter_link';
$data['value'] = 'https://twitter.com/creativeitem';
DB::table('global_settings')->insert($data);

$data['key'] = 'linkedin_link';
$data['value'] = 'https://www.linkedin.com/company/creativeitem';
DB::table('global_settings')->insert($data);

$data['key'] = 'instagram_link';
$data['value'] = 'http://www.instagram.com/creativeitem';
DB::table('global_settings')->insert($data);

$data['key'] = 'price_subtitle';
$data['value'] = 'Choose the best subscription plan for your school';
DB::table('global_settings')->insert($data);

$data['key'] = 'copyright_text';
$data['value'] = '2022 Academy, All rights reserved';
DB::table('global_settings')->insert($data);

$data['key'] = 'contact_email';
$data['value'] = 'ekattor@domain.com';
DB::table('global_settings')->insert($data);

$data['key'] = 'frontend_footer_text';
$data['value'] = 'Ekattor 8 is a collection of programs designed to assist schools in administering their executive responsibilities on a day-to-day basis. It is designed for SAAS (Software as a Service) projects.';
DB::table('global_settings')->insert($data);

$data['key'] = 'faq_subtitle';
$data['value'] = 'Frequently asked questions';
DB::table('global_settings')->insert($data);

$data['key'] = 'frontend_view';
$data['value'] = '1';
DB::table('global_settings')->insert($data);