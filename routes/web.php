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

