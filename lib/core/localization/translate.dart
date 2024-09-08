import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:intl/intl.dart';
import 'package:structure_core/core/init_core.dart';

class Translate{

  Translate._();

  static S get s{
    return S.of(InitCore().context);
  }
}

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
    'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }
  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
    'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }
  /// `TRY AGAIN`
  String get try_again {
    return Intl.message(
      'TRY AGAIN',
      name: 'try_again',
      desc: '',
      args: [],
    );
  }

  /// `Unknown error happened`
  String get error_unknown_happened {
    return Intl.message(
      'Unknown error happened',
      name: 'error_unknown_happened',
      desc: '',
      args: [],
    );
  }

  /// `INTERNAL SERVER ERROR`
  String get error_internal_server {
    return Intl.message(
      'INTERNAL SERVER ERROR',
      name: 'error_internal_server',
      desc: '',
      args: [],
    );
  }

  /// `BAD REQUEST`
  String get error_BadRequest_Error {
    return Intl.message(
      'BAD REQUEST',
      name: 'error_BadRequest_Error',
      desc: '',
      args: [],
    );
  }

  /// `PAGE NOT FOUND`
  String get error_NotFound_Error {
    return Intl.message(
      'PAGE NOT FOUND',
      name: 'error_NotFound_Error',
      desc: '',
      args: [],
    );
  }

  /// `TIME OUT`
  String get error_Timeout_Error {
    return Intl.message(
      'TIME OUT',
      name: 'error_Timeout_Error',
      desc: '',
      args: [],
    );
  }

  /// `AN UNEXPECTED ERROR OCCURRED`
  String get error_general {
    return Intl.message(
      'AN UNEXPECTED ERROR OCCURRED',
      name: 'error_general',
      desc: '',
      args: [],
    );
  }

  /// `UNAUTHORIZED`
  String get error_Unauthorized_Error {
    return Intl.message(
      'UNAUTHORIZED',
      name: 'error_Unauthorized_Error',
      desc: '',
      args: [],
    );
  }

  /// `YOU DO NOT HAVE PRIVILEGE`
  String get error_forbidden_error {
    return Intl.message(
      'YOU DO NOT HAVE PRIVILEGE',
      name: 'error_forbidden_error',
      desc: '',
      args: [],
    );
  }

  /// `An error occurred during the connection`
  String get error_connection {
    return Intl.message(
      'An error occurred during the connection',
      name: 'error_connection',
      desc: '',
      args: [],
    );
  }

  /// `Connection error`
  String get error_connection_lost {
    return Intl.message(
      'Connection error',
      name: 'error_connection_lost',
      desc: '',
      args: [],
    );
  }

  /// `The connection is interrupted`
  String get error_cancel_token {
    return Intl.message(
      'The connection is interrupted',
      name: 'error_cancel_token',
      desc: '',
      args: [],
    );
  }

  /// `Access is permanently denied. Please give the appropriate permission to complete the process`
  String get access_denied {
    return Intl.message(
      'Access is permanently denied. Please give the appropriate permission to complete the process',
      name: 'access_denied',
      desc: '',
      args: [],
    );
  }

  /// `No internet connection`
  String get error_socket {
    return Intl.message(
      'No internet connection',
      name: 'error_socket',
      desc: '',
      args: [],
    );
  }

  /// `Conflict error`
  String get error_conflict {
    return Intl.message(
      'Conflict error',
      name: 'error_conflict',
      desc: '',
      args: [],
    );
  }

  /// `Please enter this field`
  String get fillField {
    return Intl.message(
      'Please enter this field',
      name: 'fillField',
      desc: '',
      args: [],
    );
  }

  /// `Empty Records`
  String get emptyRecords {
    return Intl.message(
      'Empty Records',
      name: 'emptyRecords',
      desc: '',
      args: [],
    );
  }

  /// `Refresh`
  String get refresh {
    return Intl.message(
      'Refresh',
      name: 'refresh',
      desc: '',
      args: [],
    );
  }

  /// `Go Home`
  String get goHome {
    return Intl.message(
      'Go Home',
      name: 'goHome',
      desc: '',
      args: [],
    );
  }

  /// `No Results Found`
  String get noResult {
    return Intl.message(
      'No Results Found',
      name: 'noResult',
      desc: '',
      args: [],
    );
  }

  /// `Error Happened`
  String get errorHappened {
    return Intl.message(
      'Error Happened',
      name: 'errorHappened',
      desc: '',
      args: [],
    );
  }

  /// `Oops Page Error`
  String get pageError {
    return Intl.message(
      'Oops Page Error',
      name: 'pageError',
      desc: '',
      args: [],
    );
  }

  /// `Log in to the attendance application`
  String get login_screen_msg {
    return Intl.message(
      'Log in to the attendance application',
      name: 'login_screen_msg',
      desc: '',
      args: [],
    );
  }

  /// `Enter Name`
  String get enter_name {
    return Intl.message(
      'Enter Name',
      name: 'enter_name',
      desc: '',
      args: [],
    );
  }

  /// `Enter Email`
  String get enter_email {
    return Intl.message(
      'Enter Email',
      name: 'enter_email',
      desc: '',
      args: [],
    );
  }

  /// `Enter mail subject`
  String get enter_email_subject {
    return Intl.message(
      'Enter mail subject',
      name: 'enter_email_subject',
      desc: '',
      args: [],
    );
  }

  /// `Write the message here`
  String get write_message_here {
    return Intl.message(
      'Write the message here',
      name: 'write_message_here',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get name {
    return Intl.message(
      'Name',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `User name`
  String get username {
    return Intl.message(
      'User name',
      name: 'username',
      desc: '',
      args: [],
    );
  }

  /// `Enter user name`
  String get enter_user_name {
    return Intl.message(
      'Enter user name',
      name: 'enter_user_name',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Enter password`
  String get enter_password {
    return Intl.message(
      'Enter password',
      name: 'enter_password',
      desc: '',
      args: [],
    );
  }

  /// `Forget password?`
  String get forget_password {
    return Intl.message(
      'Forget password?',
      name: 'forget_password',
      desc: '',
      args: [],
    );
  }

  /// `Forget password`
  String get forget_password_txt {
    return Intl.message(
      'Forget password',
      name: 'forget_password_txt',
      desc: '',
      args: [],
    );
  }

  /// `Mobile number`
  String get mobile_number {
    return Intl.message(
      'Mobile number',
      name: 'mobile_number',
      desc: '',
      args: [],
    );
  }

  /// `Enter the registered mobile number`
  String get enter_the_registered_mobile_number {
    return Intl.message(
      'Enter the registered mobile number',
      name: 'enter_the_registered_mobile_number',
      desc: '',
      args: [],
    );
  }

  /// `Send`
  String get send {
    return Intl.message(
      'Send',
      name: 'send',
      desc: '',
      args: [],
    );
  }

  /// `Reset password`
  String get reset_password {
    return Intl.message(
      'Reset password',
      name: 'reset_password',
      desc: '',
      args: [],
    );
  }

  /// `New Password`
  String get new_password {
    return Intl.message(
      'New Password',
      name: 'new_password',
      desc: '',
      args: [],
    );
  }

  /// `Confirm new password`
  String get confirm_new_password {
    return Intl.message(
      'Confirm new password',
      name: 'confirm_new_password',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get app_cancel {
    return Intl.message(
      'Cancel',
      name: 'app_cancel',
      desc: '',
      args: [],
    );
  }

  /// `Confirm`
  String get app_confirm {
    return Intl.message(
      'Confirm',
      name: 'app_confirm',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get label_logout {
    return Intl.message(
      'Logout',
      name: 'label_logout',
      desc: '',
      args: [],
    );
  }

  /// `Done`
  String get done {
    return Intl.message(
      'Done',
      name: 'done',
      desc: '',
      args: [],
    );
  }

  /// `Size more than 8mg`
  String get size_more_than_8mg {
    return Intl.message(
      'Size more than 8mg',
      name: 'size_more_than_8mg',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get save {
    return Intl.message(
      'Save',
      name: 'save',
      desc: '',
      args: [],
    );
  }

  /// `Search`
  String get search {
    return Intl.message(
      'Search',
      name: 'search',
      desc: '',
      args: [],
    );
  }

  /// `More`
  String get more {
    return Intl.message(
      'More',
      name: 'more',
      desc: '',
      args: [],
    );
  }

  /// `Add More`
  String get addMore {
    return Intl.message(
      'Add More',
      name: 'addMore',
      desc: '',
      args: [],
    );
  }

  /// `Should have Upper and Lower case, numbers and special characters`
  String get passValidation {
    return Intl.message(
      'Should have Upper and Lower case, numbers and special characters',
      name: 'passValidation',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid email`
  String get mailValidation {
    return Intl.message(
      'Please enter a valid email',
      name: 'mailValidation',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid mobile phone`
  String get phoneValidation {
    return Intl.message(
      'Please enter a valid mobile phone',
      name: 'phoneValidation',
      desc: '',
      args: [],
    );
  }

  /// `Please enter the password identical`
  String get confirmValidation {
    return Intl.message(
      'Please enter the password identical',
      name: 'confirmValidation',
      desc: '',
      args: [],
    );
  }

  /// `Please enter the address`
  String get AddressValidation {
    return Intl.message(
      'Please enter the address',
      name: 'AddressValidation',
      desc: '',
      args: [],
    );
  }

  /// `Should be more than 8 and less than 30`
  String get nameValidation {
    return Intl.message(
      'Should be more than 8 and less than 30',
      name: 'nameValidation',
      desc: '',
      args: [],
    );
  }

  /// `Welcome`
  String get welcome {
    return Intl.message(
      'Welcome',
      name: 'welcome',
      desc: '',
      args: [],
    );
  }

  /// `You can record attendance and leave`
  String get you_can_record_attendance_and_leave {
    return Intl.message(
      'You can record attendance and leave',
      name: 'you_can_record_attendance_and_leave',
      desc: '',
      args: [],
    );
  }

  /// `Checkout`
  String get checkout {
    return Intl.message(
      'Checkout',
      name: 'checkout',
      desc: '',
      args: [],
    );
  }

  /// `Checkin`
  String get checkin {
    return Intl.message(
      'Checkin',
      name: 'checkin',
      desc: '',
      args: [],
    );
  }

  /// `All Rights Reserved`
  String get all_rights_reserved {
    return Intl.message(
      'All Rights Reserved',
      name: 'all_rights_reserved',
      desc: '',
      args: [],
    );
  }

  /// `Put the QR code inside the area`
  String get scan_qr_msg1 {
    return Intl.message(
      'Put the QR code inside the area',
      name: 'scan_qr_msg1',
      desc: '',
      args: [],
    );
  }

  /// `Scanning will start automatically`
  String get scan_qr_msg2 {
    return Intl.message(
      'Scanning will start automatically',
      name: 'scan_qr_msg2',
      desc: '',
      args: [],
    );
  }

  /// `Enter your email address and we'll send you a URL to set your password.`
  String get forgetPassword_screen_msg {
    return Intl.message(
      'Enter your email address and we\'ll send you a URL to set your password.',
      name: 'forgetPassword_screen_msg',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `E-Services`
  String get e_services {
    return Intl.message(
      'E-Services',
      name: 'e_services',
      desc: '',
      args: [],
    );
  }

  /// `Requests`
  String get requests {
    return Intl.message(
      'Requests',
      name: 'requests',
      desc: '',
      args: [],
    );
  }

  /// `Messages`
  String get messages {
    return Intl.message(
      'Messages',
      name: 'messages',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get profile {
    return Intl.message(
      'Profile',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `Overcoming Challenges`
  String get overcoming_challenges {
    return Intl.message(
      'Overcoming Challenges',
      name: 'overcoming_challenges',
      desc: '',
      args: [],
    );
  }

  /// `Attendance report`
  String get attendance_report {
    return Intl.message(
      'Attendance report',
      name: 'attendance_report',
      desc: '',
      args: [],
    );
  }

  /// `Business Card`
  String get business_card {
    return Intl.message(
      'Business Card',
      name: 'business_card',
      desc: '',
      args: [],
    );
  }

  /// `ID Request`
  String get id_request {
    return Intl.message(
      'ID Request',
      name: 'id_request',
      desc: '',
      args: [],
    );
  }

  /// `Payment Request`
  String get payment_request {
    return Intl.message(
      'Payment Request',
      name: 'payment_request',
      desc: '',
      args: [],
    );
  }

  /// `No requests available`
  String get no_requests_available {
    return Intl.message(
      'No requests available',
      name: 'no_requests_available',
      desc: '',
      args: [],
    );
  }

  /// `Request list is empty`
  String get request_list_is_empty {
    return Intl.message(
      'Request list is empty',
      name: 'request_list_is_empty',
      desc: '',
      args: [],
    );
  }

  /// `ID`
  String get id {
    return Intl.message(
      'ID',
      name: 'id',
      desc: '',
      args: [],
    );
  }

  /// `Job`
  String get job_title {
    return Intl.message(
      'Job',
      name: 'job_title',
      desc: '',
      args: [],
    );
  }

  /// `Manager`
  String get direct_manager {
    return Intl.message(
      'Manager',
      name: 'direct_manager',
      desc: '',
      args: [],
    );
  }

  /// `Hiring Date`
  String get hiring_date {
    return Intl.message(
      'Hiring Date',
      name: 'hiring_date',
      desc: '',
      args: [],
    );
  }

  /// `Department`
  String get department {
    return Intl.message(
      'Department',
      name: 'department',
      desc: '',
      args: [],
    );
  }

  /// `Location`
  String get location {
    return Intl.message(
      'Location',
      name: 'location',
      desc: '',
      args: [],
    );
  }

  /// `Leave\nBalance`
  String get leave_balance {
    return Intl.message(
      'Leave\nBalance',
      name: 'leave_balance',
      desc: '',
      args: [],
    );
  }

  /// `Permission\nBalance`
  String get permission_balance {
    return Intl.message(
      'Permission\nBalance',
      name: 'permission_balance',
      desc: '',
      args: [],
    );
  }

  /// `Days`
  String get days {
    return Intl.message(
      'Days',
      name: 'days',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get language {
    return Intl.message(
      'Language',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `You are logged out`
  String get you_are_logout {
    return Intl.message(
      'You are logged out',
      name: 'you_are_logout',
      desc: '',
      args: [],
    );
  }

  /// `Login again`
  String get login_again {
    return Intl.message(
      'Login again',
      name: 'login_again',
      desc: '',
      args: [],
    );
  }

  /// `Latest News`
  String get latest_news {
    return Intl.message(
      'Latest News',
      name: 'latest_news',
      desc: '',
      args: [],
    );
  }

  /// `All News`
  String get all_news {
    return Intl.message(
      'All News',
      name: 'all_news',
      desc: '',
      args: [],
    );
  }

  /// `Calender`
  String get calender {
    return Intl.message(
      'Calender',
      name: 'calender',
      desc: '',
      args: [],
    );
  }

  /// `Employee number`
  String get employee_number {
    return Intl.message(
      'Employee number',
      name: 'employee_number',
      desc: '',
      args: [],
    );
  }

  /// `Position`
  String get position_name {
    return Intl.message(
      'Position',
      name: 'position_name',
      desc: '',
      args: [],
    );
  }

  /// `Department`
  String get department_name {
    return Intl.message(
      'Department',
      name: 'department_name',
      desc: '',
      args: [],
    );
  }

  /// `Email Copied`
  String get email_copied {
    return Intl.message(
      'Email Copied',
      name: 'email_copied',
      desc: '',
      args: [],
    );
  }

  /// `Request Details`
  String get request_details {
    return Intl.message(
      'Request Details',
      name: 'request_details',
      desc: '',
      args: [],
    );
  }

  /// `Temperature`
  String get temperature {
    return Intl.message(
      'Temperature',
      name: 'temperature',
      desc: '',
      args: [],
    );
  }

  /// `Upcoming Time Off`
  String get upcoming_time_off {
    return Intl.message(
      'Upcoming Time Off',
      name: 'upcoming_time_off',
      desc: '',
      args: [],
    );
  }

  /// `From`
  String get from {
    return Intl.message(
      'From',
      name: 'from',
      desc: '',
      args: [],
    );
  }

  /// `To`
  String get to {
    return Intl.message(
      'To',
      name: 'to',
      desc: '',
      args: [],
    );
  }

  /// `Support`
  String get support {
    return Intl.message(
      'Support',
      name: 'support',
      desc: '',
      args: [],
    );
  }

  /// `Contract Remain Days`
  String get contract_remain_days {
    return Intl.message(
      'Contract Remain Days',
      name: 'contract_remain_days',
      desc: '',
      args: [],
    );
  }

  /// `Employee Service Period`
  String get employee_service_period {
    return Intl.message(
      'Employee Service Period',
      name: 'employee_service_period',
      desc: '',
      args: [],
    );
  }

  /// `Shared Services Support`
  String get shared_services_support {
    return Intl.message(
      'Shared Services Support',
      name: 'shared_services_support',
      desc: '',
      args: [],
    );
  }

  String get press_twice_to_exit {
    return Intl.message(
      'Shared Services Support',
      name: 'shared_services_support',
      desc: '',
      args: [],
    );
  }
  String get select {
    return Intl.message(
      'Shared Services Support',
      name: 'shared_services_support',
      desc: '',
      args: [],
    );
  }
  String get confirm {
    return Intl.message(
      'Shared Services Support',
      name: 'shared_services_support',
      desc: '',
      args: [],
    );
  }
  String get no_data_found {
    return Intl.message(
      'Shared Services Support',
      name: 'shared_services_support',
      desc: '',
      args: [],
    );
  }
}