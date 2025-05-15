<?php

use Illuminate\Support\Facades\Route;

use App\Http\Controllers\Auth\LoginController;
use App\Http\Controllers\CommonController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\TicketController;
use App\Http\Controllers\AccountSettingsController;
use App\Http\Controllers\TicketLabelsController;
use App\Http\Controllers\TicketStatusController;
use App\Http\Controllers\TicketAdditionalFieldsController;
use App\Http\Controllers\CustomersController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\ProductSettingsController;
use App\Http\Controllers\ReportController;
use App\Http\Controllers\InvoiceController;

Route::get('/', function () {
    return redirect('login');
});


Route::controller(LoginController::class)->group(function() {
	Route::get('/login', 'showLoginForm')->name('login');
	Route::post('/login', 'userLogin')->name('user-login');
	Route::post('/logout', 'logout')->name('logout');
});


Route::group(['middleware' => 'authware'], function()
{

Route::controller(DashboardController::class)->group(function() {
	Route::get('dashboard', 'index')->name('dashboard');
});

Route::controller(CommonController::class)->group(function() {
	Route::get('get-categories/{id}', 'getCategories')->name('get-categories');
});



Route::controller(TicketController::class)->group(function(){
    Route::get('list-tickets','index')->name('list-tickets');
	Route::post('list-tickets','index')->name('list-tickets');
	Route::get('closed-tickets','closedTickets')->name('closed-tickets');
	Route::post('closed-tickets','closedTickets')->name('closed-tickets');
	
	Route::get('deleted-tickets','deletedTickets')->name('deleted-tickets');
	Route::post('deleted-tickets','deletedTickets')->name('deleted-tickets');
		
	Route::get('add-new-ticket/{id}','addNewTicket')->name('add-new-ticket');
	Route::post('save-new-ticket','store')->name('save-new-ticket');

	Route::post('change-priority-status','changeTicketPriority')->name('change-priority-status');
	Route::post('change-ticket-status','changeTicketStatus')->name('change-ticket-status');
	Route::post('assign-ticket-agents','assignTicketAgents')->name('assign-ticket-agents');
	Route::post('notify-ticket-agents','notifyTicketAgents')->name('notify-ticket-agents');
	Route::post('unassigned-ticket-agent','unassignedTicketAgent')->name('unassigned-ticket-agent');
	Route::post('change-branch','changeBranch')->name('change-branch');
	Route::get('get-ticket-details/{id}','getTicketDetails')->name('get-ticket-details');
	
	Route::post('save-log-note','saveLogNote')->name('save-log-note');
	Route::post('save-new-ticket-task','saveNewTicketTask')->name('save-new-ticket-task');
	
	Route::post('update-ticket','UpdateTicket')->name('update-ticket');
	Route::get('delete-ticket/{id}','deleteTicket')->name('delete-ticket');
	
	Route::post('save-spare-parts','saveSpareParts')->name('save-spare-parts');
		
	Route::post('update-custom-field','updateAdditionalField')->name('update-custom-field');
	Route::post('update-ticket-duedate','updateTicketDueDate')->name('update-ticket-duedate');

	Route::get('restore-ticket/{id}','restoreTicket')->name('restore-ticket');
	Route::get('delete-ticket-permanently/{id}','deleteTicketPermanently')->name('delete-ticket-permanently');
	
	Route::post('ticket-file-upload','ticketFileUpload')->name('ticket-file-upload');
	Route::get('delete-ticket-file/{id}','deleteTicketFile')->name('delete-ticket-file');
	Route::get('delete-ticket-spare-part/{id}','deleteTicketSparepart')->name('delete-ticket-spare-part');
	
	
});


Route::controller(AccountSettingsController::class)->group(function(){
	
    Route::get('profile','index')->name('profile');
	Route::post('change-profile','changeProfile')->name('change-profile');
	Route::post('change-password','changePassword')->name('change-password');
	
	Route::get('list-users','listUsers')->name('list-users');
	Route::get('view-users-list','viewUserslist')->name('view-users-list');
	Route::post('save-user','saveUser')->name('save-user');
	
	Route::get('edit-user/{id}','editUser')->name('edit-user');
	Route::post('update-user','updateUser')->name('update-user');
	Route::get('delete-user/{id}','destroy')->name('delete-user');
	Route::post('change-user-password','changeUserPassword')->name('change-user-password');
	
	Route::post('save-branch','saveBranch')->name('save-branch');
	Route::get('view-branches','viewBranches')->name('view-branches');
	Route::get('delete-branch/{id}','deleteBranch')->name('delete-branches');
	
	Route::post('save-designation','saveDesignation')->name('save-designation');
	Route::get('view-designations','viewDesignations')->name('view-designations');
	Route::get('delete-designation/{id}','deleteDesignation')->name('delete-designation');
	
	Route::post('save-department','saveDepartment')->name('save-department');
	Route::get('view-departments','viewDepartments')->name('view-departments');
	Route::get('delete-department/{id}','deleteDepartment')->name('delete-department');
});


Route::controller(ProductSettingsController::class)->group(function(){
	
    Route::get('brands','index')->name('brands');
	Route::get('category','productCategory')->name('category');
	Route::get('view-brands','viewBrands')->name('view-brands');
	Route::get('view-categories','viewCategories')->name('view-categories');
	
	Route::post('save-brand','saveBrand')->name('save-brand');
	Route::post('save-category','saveCategory')->name('save-category');
	
	Route::get('delete-brand/{id}','deleteBrand')->name('delete-brand');
	Route::get('delete-category/{id}','deleteCategory')->name('delete-category');

}); 


Route::controller(ProductController::class)->group(function(){
	
    Route::get('list-products','index')->name('list-products');
	Route::get('add-product','addProduct')->name('add-product');
	Route::post('save-product','store')->name('save-product');
	Route::get('view-products','viewProducts')->name('view-products');
	
	Route::get('edit-product/{id}','edit')->name('edit-product');
	Route::post('update-product','updateProduct')->name('update-product');
	Route::get('delete-product/{id}','deleteProduct')->name('delete-product');
	
}); 

Route::controller(TicketLabelsController::class)->group(function(){
    Route::get('ticket-labels','index')->name('ticket-labels');
	Route::post('save-label-color','saveLabelColor')->name('save-label-color');
	Route::get('view-labels','viewLabels')->name('view-labels');
	Route::post('update-label','updateLabel')->name('update-label');
	Route::get('delete-label/{id}','destroy')->name('delete-label');
});


Route::controller(TicketStatusController::class)->group(function(){
    Route::get('ticket-status','index')->name('ticket-status');
	Route::post('save-ticket-status','saveTicketStatus')->name('save-ticket-status');
	Route::get('view-ticket-status','viewTicketStatus')->name('view-ticket-status');
	Route::post('update-ticket-status','updateTicketStatus')->name('update-ticket-status');	
});

Route::controller(TicketAdditionalFieldsController::class)->group(function(){
    Route::get('additional-fields','index')->name('additional-fields');
	Route::post('save-additional-field','saveAdditionalField')->name('save-additional-field');
	Route::get('view-additional-fields','viewAdditionalFields')->name('view-additional-fields');
	Route::get('edit-additional-field/{id}','edit')->name('edit-additional-field');	
	Route::post('update-additional-field','updateAdditionalField')->name('update-additional-field');
	Route::get('delete-additional-field/{id}','destroy')->name('delete-additional-field');		
});

Route::controller(CustomersController::class)->group(function(){
    Route::get('list-customers','index')->name('list-customers');
	Route::get('view-customers','viewCustomers')->name('view-customers');
	Route::get('customer-details/{id}','getCustomerDetails')->name('customer-details');
	
	Route::post('create-customer','createCustomer')->name('create-customer');
	
});


Route::controller(ReportController::class)->group(function(){
	
    Route::get('user-analytics','index')->name('user-analytics');
	Route::get('view-ticket-counts','viewUsersTicketCounts')->name('view-ticket-counts');
	
	Route::get('agent-wise-report','agentWiseReport')->name('agent-wise-report');
	Route::get('view-agent-tickets-report','viewAgentTickets')->name('view-agent-tickets-report');
	
	Route::get('ticket-status-report','ticketStatusWiseReport')->name('ticket-status-report');
	Route::get('view-ticket-status-report','viewTicketStatusReport')->name('view-ticket-status-report');
	
	Route::get('customer-tickets','customerTicketsReport')->name('customer-tickets');
	Route::get('view-customer-tickets-report','viewCustomerTicketsReport')->name('view-customer-tickets-report');
	
	Route::get('all-tickets','allTicketsReport')->name('all-tickets');
	Route::get('view-all-tickets-report','viewAllTicketsReport')->name('view-all-tickets-report');
	
	Route::get('payment-report','paymentsReport')->name('payment-report');
	Route::get('view-payments-report','viewPaymentsDetails')->name('view-payments-report');
	
	//Reports
	
	Route::get('/export-all-tickets/{sdat}/{edat}', 'export_all_tickets')->name('export-all-tickets');
	Route::get('/export-agent-tickets/{sdat}/{edat}/{agent}', 'export_agent_tickets')->name('export-agent-tickets');
	Route::get('/export-status-report/{sdat}/{edat}/{status}/{agent}', 'export_status_report')->name('export-status-report');
	Route::get('/export-customer-tickets/{sdat}/{edat}/{cust_id}', 'export_customer_tickets')->name('export-customer-tickets');
	Route::get('/export-payment-report/{sdat}/{edat}/{month}/{pmode}/{year}', 'export_payment_report')->name('export-payment-report');
	
}); 


Route::controller(InvoiceController::class)->group(function(){
	
    Route::get('list-invoice','index')->name('list-invoice');
	Route::post('save-invoice','store')->name('save-invoice');
	
	Route::get('view-invoices-list','viewInvoicesList')->name('view-invoices-list');
	Route::post('set-invoice-payment','setInvoicePayment')->name('set-invoice-payment');
	Route::get('get-bill-preview/{id}','getBillPreview')->name('get-bill-preview');
	
	Route::get('payments','payments')->name('payments');
	Route::get('view-payments','viewPayments')->name('view-payments');
	
	
}); 










/*
Route::controller(ForgotPasswordController::class)->group(function() {

Route::get('forgot-password','index')->name('forgot-password');  
Route::post('send-forgot-password-otp','sendForgotPasswordOtp')->name('send-forgot-password-otp');  
		  //Route::get('resend-forgot-password-otp/{email}',[AdminController::class,'resendForgotPasswordOtp'])->name('resend-forgot-password-otp');  
Route::get('verify-otp','verifyOtp')->name('verify-otp');  
Route::post('check-forgot-password-otp','checkForgotPasswordOtp')->name('check-forgot-password-otp');  
Route::get('change-user-password','changeUserPassword')->name('change-user-password');  
Route::post('update-user-password','updateUserPassword')->name('update-user-password');  

});



Route::group(['prefix'=>'shops','as'=>'shops.','middleware' => 'authware'], function()
{

Route::controller(DashboardShopController::class)->group(function() {
	
	Route::get('/dashboard', 'index')->name('dashboard');
	
});

Route::controller(CustomersHistoryController::class)->group(function() {

	Route::get('/customers-history', 'index')->name('customers-history');
	Route::get('/get-customers-history', 'getCustomers')->name('get-customers-history');
	Route::get('/scratch-redeem/{id}', 'redeem')->name('scratch-redeem');
	Route::post('/sractch-history-download', 'downloadHistory')->name('sractch-history-download');	
	Route::post('/export-customers-list', 'exportWebCustomersList')->name('export-customers-list');
	Route::get('/redeem-scratch', 'redeemScratch')->name('redeem-scratch');
	Route::post('/redeem-scratch-now', 'redeemScratchNow')->name('redeem-scratch-now');
});

});



Route::group(['prefix'=>'users','as'=>'users.','middleware' => 'authware'], function()
{

Route::controller(DashboardController::class)->group(function() {
	
	//Route::group(['prefix'=>'users','as'=>'users.'], function()
	//{
		Route::get('/dashboard', 'index')->name('dashboard');
		Route::get('/shop-dashboard', 'shops')->name('shop-dashboard');
	//});
});

Route::controller(CampaignController::class)->group(function() {
	
	Route::get('/campaigns', 'index')->name('campaigns');
	Route::get('/add-campaign', 'addCampaign')->name('add-campaign');
	Route::post('/save-campaign', 'store')->name('save-campaign');
	Route::get('/edit-campaign/{id}', 'edit')->name('edit-campaign');
	Route::post('/update-campaign', 'update')->name('update-campaign');
	Route::get('/delete-campaign/{id}', 'destroy')->name('delete-campaign');
	Route::get('/view-offers', 'viewOffers')->name('view-offers');
	
	Route::get('/view-campaign-gifts-listings', 'viewCampaignGiftListings')->name('view-campaign-gifts-listings');

	Route::get('/offer-activate-deactivate/{opt}/{id}', 'offerActivateDeactivate')->name('offer-activate-deactivate');
	Route::post('/update-image', 'uploadOfferGiftImage')->name('update-image');
});


Route::controller(CampaignDetailController::class)->group(function() {
	
	Route::get('//get-campaign/{id}', 'getCampaign')->name('get-campaign');
	Route::get('/view-campaign-customers', 'viewWebCustomers')->name('view-campaign-customers');
	Route::get('/view-campaign-app-customers', 'viewAppCustomers')->name('view-campaign-app-customers');

});

Route::controller(CampaignGiftController::class)->group(function() {
	
	Route::get('/add-gifts/{id}', 'addGifts')->name('add-gifts');
	Route::post('/save-gift', 'saveGifts')->name('save-gift');
	Route::get('/view-campaign-gifts', 'viewCampaignGifts')->name('view-campaign-gifts');
	Route::get('/delete-gift/{id}', 'deleteGift')->name('delete-gift');
	
	Route::get('/gifts-list', 'giftsList')->name('gifts-list');
	Route::get('/view-gifts-list', 'viewGiftListings')->name('view-gifts-list');
	Route::get('/edit-gift/{id}', 'edit')->name('edit-gift');
	Route::post('/update-gift', 'updateGift')->name('update-gift');
	
	Route::get('/gift-activate-deactivate/{opt}/{id}', 'giftActivateDeactivate')->name('gift-activate-deactivate');
		
});

/*Route::controller(ScratchHistoryController::class)->group(function() {

	Route::get('/redeem-history', 'index')->name('redeem-history');
	Route::get('/view-redeem-history', 'viewRedeemHistory')->name('view-redeem-history');
	Route::post('/export-customers-list', 'exportCustomersList')->name('export-customers-list');
	
	Route::get('scratch-offer-redeem/{id}', 'redeemOffers')->name('scratch-offer-redeem');
	
});*/

/*
Route::controller(GlShortLinksController::class)->group(function() {

	Route::get('/gl-links', 'index')->name('gl-links');
	Route::post('/gl-links', 'index')->name('gl-links');
	
	Route::get('/add-link', 'addLink')->name('add-link');
	Route::post('/save-link', 'store')->name('save-link');
	Route::get('/view-short-links', 'getShortLinks')->name('view-short-links');
	Route::get('/edit-link/{id}', 'edit')->name('edit-link');
	Route::post('/update-link', 'updateLink')->name('update-link');
	Route::get('/link-activate-deactivate/{opt}/{id}', 'linkActivateDeactivate')->name('link-activate-deactivate');
	Route::get('/web-click-link-history/{id}', 'webClickLinkHistory')->name('web-click-link-history');
	Route::get('/view-click-link-history/{id}', 'viewWebClickLinkHistory')->name('view-click-link-history');
	Route::get('/delete-link/{id}', 'destroy')->name('delete-link');
	
	Route::get('/generate-links', 'generateLinks')->name('generate-links');
	Route::post('/generate-multiple-links', 'saveGeneratedMultipleLinks')->name('generate-multiple-links');
	
	Route::get('/generate-qrcode', 'reGenerateQrcode')->name('generate-qrcode');
	Route::post('/generate-qrcode-pdf', 'generateQrcodePdf')->name('generate-qrcode-pdf');
	
	Route::post('/delete-multiple-links', 'deleteMultipleLinks')->name('delete-multiple-links');
	Route::get('/get_unique_number_code/{no}', 'getUniqueNumberCode')->name('get_unique_number_code');
	Route::get('/get_unique_alphabets_code/{no}', 'getUniqueAlphabetsCode')->name('get_unique_alphabets_code');
	Route::get('/get-link-count-section/{offer_id}', 'getLinkCountSection')->name('get-link-count-section');
	
});



Route::controller(ScratchWebController::class)->group(function() {

	Route::get('/scratch-web-customers', 'index')->name('scratch-web-customers');
	Route::get('/get-scratch-web-customers', 'getWebCustomers')->name('get-scratch-web-customers');
	Route::get('/get-scratch-app-customers', 'getAppCustomers')->name('get-scratch-app-customers');
	Route::get('/scratch-web-redeem/{id}', 'redeem')->name('scratch-web-redeem');
	Route::post('/sractch-web-history-download', 'downloadHistory')->name('sractch-web-history-download');	
	
	//Route::get('/export-web-customers-list/{sdate}/{edate}', 'export_web_customers_list')->name('export-web-customers-list');
	
	Route::post('/export-web-customers-list', 'exportWebCustomersList')->name('export-web-customers-list');
	Route::get('/redeem-scratch', 'redeemScratch')->name('redeem-scratch');
	Route::post('/redeem-scratch-now', 'redeemScratchNow')->name('redeem-scratch-now');
	
	
});


Route::controller(ScratchAdImageController::class)->group(function() {

	Route::get('/scratch-ads-image', 'index')->name('scratch-ads-image');
	Route::post('/save-ads-image', 'store')->name('save-ads-image');
	Route::get('/get-scratch-ads-images', 'getScratchAds')->name('get-scratch-ads-images');
	Route::get('/delete-ad-image/{id}', 'destroy')->name('delete-ad-image');
	Route::get('/act-deact-ads-image/{op}/{id}', 'activateDeactivate')->name('act-deact-ads-image');	
	
});


Route::controller(ScratchBillController::class)->group(function() {

	Route::get('/scratch-bills', 'index')->name('scratch-bill');
	Route::post('/save-bill', 'store')->name('save-bill');
	Route::get('/view-bills', 'viewBills')->name('view-bills');
	Route::get('/edit-bill/{id}', 'edit')->name('edit-bill');
	Route::post('/update-bill', 'updateBill')->name('update-bill');
	Route::get('/delete-bill/{id}', 'destroy')->name('delete-bill');
	Route::get('/act-deact-bill/{op}/{id}', 'activateDeactivate')->name('act-deact-bill');	
	
});

Route::controller(ScratchOfferBranchController::class)->group(function() {

	Route::get('/scratch-branches', 'index')->name('scratch-branches');
	Route::post('/save-branch', 'store')->name('save-branch');
	Route::get('/view-branches', 'viewBranches')->name('view-branches');
	Route::get('/edit-branch/{id}', 'edit')->name('edit-branch');
	Route::post('/update-branch', 'updateBranch')->name('update-branch');
	Route::get('/delete-branch/{id}', 'destroy')->name('delete-branch');
	Route::get('/act-deact-branch/{op}/{id}', 'activateDeactivate')->name('act-deact-branch');	
	
});

Route::controller(ShopUsersController::class)->group(function() {

	Route::get('/staff-users', 'index')->name('staff-users');
	Route::post('/save-staff-user', 'store')->name('save-staff-user');
	Route::get('/view-staff-users', 'viewStaffUsers')->name('view-staff-users');
	Route::get('/edit-staff-user/{id}', 'edit')->name('edit-staff-user');
	Route::post('/update-staff-user', 'updateStaffUser')->name('update-staff-user');
	Route::get('/delete-staff-user/{id}', 'destroy')->name('delete-staff-user');
	Route::get('/act-deact-staff-user/{op}/{id}', 'activateDeactivate')->name('act-deact-staff-user');	
	
});

Route::controller(UserProfileController::class)->group(function() {

	Route::get('/user-profile', 'index')->name('user-profile');
	Route::post('/update-user-profile', 'updateUserProfile')->name('update-user-profile');
	Route::post('/update-profile-image', 'uploadProfileImage')->name('update-profile-image');
	Route::post('/change-password', 'changePassword')->name('change-password');
});

Route::controller(GeneralSettingsController::class)->group(function() {

	Route::get('/general-settings', 'index')->name('general-settings');
	Route::post('/set-scratch-otp-enabled', 'setScratchOtpEnabled')->name('set-scratch-otp-enabled');
	Route::get('/send-otp', 'sendWhatsappOtp')->name('send-top');
	Route::post('/save-crmapi-token', 'saveCrmApiToken')->name('save-crmapi-token');
	Route::post('/set-crm-api-status', 'setCrmApiStatus')->name('setCrmApiStatus');
});

});

// Scrtach web routes -------------------------------------------------------------------------------------------->

Route::domain(env('SHORT_LINK_DOMAIN'))->group(function () {

    Route::get('scratch-form', 'App\Http\Controllers\Shortener\ShortenerController@form');
    Route::get('scratch/terms', 'App\Http\Controllers\Shortener\ShortenerController@terms')->name('shorter-link.terms');
    Route::get('scratch/thank-you', 'App\Http\Controllers\Shortener\ShortenerController@thankyou')->name('shorter-link.thank-you');
	
    Route::get('{id}/{code}', 'App\Http\Controllers\Shortener\ShortenerController@index')->name('shorter-link');
	Route::get('sc/{code}', 'App\Http\Controllers\Shortener\GlScratchWebController@shortenLink')->name('shorter-link-2');
    Route::post('scr/gl-verify-mobile', 'App\Http\Controllers\Shortener\GlScratchWebController@verifyMobile')->name('/scr/gl-verify-mobile');
    Route::post('scr/gl-verify-otp', 'App\Http\Controllers\Shortener\GlScratchWebController@verifyOtp')->name('gl-verify-otp');
    Route::post('scr/scratch-web-customer', 'App\Http\Controllers\Shortener\GlScratchWebController@scratchCustomer')->name('scratch-web-user');
    Route::post('scr/gl-scratched/{id}/{web_api?}', 'App\Http\Controllers\Shortener\GlScratchWebController@glScratched')->name('scratch-scratched');
    Route::get('w/{code}', 'App\Http\Controllers\Shortener\WhatsappLinkController@index')->name('shorter-wap-link');
    Route::get('wa/{code}', 'App\Http\Controllers\Shortener\GlScratchWebController@gotoApiScratch')->name('go-to-api-scratch');

	Route::get('sc/get-branch-autocomplete/{user_id}', 'App\Http\Controllers\Shortener\GlScratchWebController@getBranchAutocomplete')->name('get-branch-autocomplete');
});

*/


});