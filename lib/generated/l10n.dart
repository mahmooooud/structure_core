// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
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

  /// `Please, reload page and resend request`
  String get error_Timeout_Error {
    return Intl.message(
      'Please, reload page and resend request',
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

  /// `welcome {name}`
  String welcome(Object name) {
    return Intl.message(
      'welcome $name',
      name: 'welcome',
      desc: '',
      args: [name],
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

  /// `Clock out`
  String get checkout {
    return Intl.message(
      'Clock out',
      name: 'checkout',
      desc: '',
      args: [],
    );
  }

  /// `Clock in`
  String get checkin {
    return Intl.message(
      'Clock in',
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

  /// `Enter your details below to login`
  String get enter_your_details {
    return Intl.message(
      'Enter your details below to login',
      name: 'enter_your_details',
      desc: '',
      args: [],
    );
  }

  /// `This field is mandatory`
  String get not_empty {
    return Intl.message(
      'This field is mandatory',
      name: 'not_empty',
      desc: '',
      args: [],
    );
  }

  /// `OTP Verification`
  String get otp_verification {
    return Intl.message(
      'OTP Verification',
      name: 'otp_verification',
      desc: '',
      args: [],
    );
  }

  /// `Enter the 4 digit code sent to`
  String get enter_otp {
    return Intl.message(
      'Enter the 4 digit code sent to',
      name: 'enter_otp',
      desc: '',
      args: [],
    );
  }

  /// `Having trouble? Request a new OTP in`
  String get resend_code {
    return Intl.message(
      'Having trouble? Request a new OTP in',
      name: 'resend_code',
      desc: '',
      args: [],
    );
  }

  /// `Verifying OTP...`
  String get verify_otp {
    return Intl.message(
      'Verifying OTP...',
      name: 'verify_otp',
      desc: '',
      args: [],
    );
  }

  /// `Resend`
  String get resend {
    return Intl.message(
      'Resend',
      name: 'resend',
      desc: '',
      args: [],
    );
  }

  /// `Enter your organization code`
  String get enter_organization_code {
    return Intl.message(
      'Enter your organization code',
      name: 'enter_organization_code',
      desc: '',
      args: [],
    );
  }

  /// `The Organization code you entered is not correct`
  String get invalid_organization_code {
    return Intl.message(
      'The Organization code you entered is not correct',
      name: 'invalid_organization_code',
      desc: '',
      args: [],
    );
  }

  /// `Enter your email and you’ll receive a link to reset your password`
  String get enter_email_to_reset_password {
    return Intl.message(
      'Enter your email and you’ll receive a link to reset your password',
      name: 'enter_email_to_reset_password',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get next {
    return Intl.message(
      'Next',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `Email has been sent`
  String get email_sent {
    return Intl.message(
      'Email has been sent',
      name: 'email_sent',
      desc: '',
      args: [],
    );
  }

  /// `Check the email that we sent to`
  String get check_email {
    return Intl.message(
      'Check the email that we sent to',
      name: 'check_email',
      desc: '',
      args: [],
    );
  }

  /// `to reset your password`
  String get to_reset_password {
    return Intl.message(
      'to reset your password',
      name: 'to_reset_password',
      desc: '',
      args: [],
    );
  }

  /// `Incorrect email or password`
  String get incorrect_email_password {
    return Intl.message(
      'Incorrect email or password',
      name: 'incorrect_email_password',
      desc: '',
      args: [],
    );
  }

  /// `Account`
  String get account {
    return Intl.message(
      'Account',
      name: 'account',
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

  /// `View Profile`
  String get view_profile {
    return Intl.message(
      'View Profile',
      name: 'view_profile',
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

  /// `Change Password`
  String get change_password {
    return Intl.message(
      'Change Password',
      name: 'change_password',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get logout {
    return Intl.message(
      'Logout',
      name: 'logout',
      desc: '',
      args: [],
    );
  }

  /// `Current Password`
  String get current_password {
    return Intl.message(
      'Current Password',
      name: 'current_password',
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

  /// `Confirm New password`
  String get confirm_new_password {
    return Intl.message(
      'Confirm New password',
      name: 'confirm_new_password',
      desc: '',
      args: [],
    );
  }

  /// `Doesn’t match the new password you entered`
  String get password_not_matched {
    return Intl.message(
      'Doesn’t match the new password you entered',
      name: 'password_not_matched',
      desc: '',
      args: [],
    );
  }

  /// `Password Changed Successfully`
  String get password_change_successfully {
    return Intl.message(
      'Password Changed Successfully',
      name: 'password_change_successfully',
      desc: '',
      args: [],
    );
  }

  /// `Title`
  String get title {
    return Intl.message(
      'Title',
      name: 'title',
      desc: '',
      args: [],
    );
  }

  /// `Phone number`
  String get phone_number {
    return Intl.message(
      'Phone number',
      name: 'phone_number',
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

  /// `Direct manger`
  String get direct_manger {
    return Intl.message(
      'Direct manger',
      name: 'direct_manger',
      desc: '',
      args: [],
    );
  }

  /// `Incorrect OTP`
  String get incorrect_otp {
    return Intl.message(
      'Incorrect OTP',
      name: 'incorrect_otp',
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

  /// `Calendar`
  String get calendar {
    return Intl.message(
      'Calendar',
      name: 'calendar',
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

  /// `All Requests`
  String get all_requests {
    return Intl.message(
      'All Requests',
      name: 'all_requests',
      desc: '',
      args: [],
    );
  }

  /// `My Requests`
  String get my_requests {
    return Intl.message(
      'My Requests',
      name: 'my_requests',
      desc: '',
      args: [],
    );
  }

  /// `Team Requests`
  String get team_requests {
    return Intl.message(
      'Team Requests',
      name: 'team_requests',
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

  /// `No report available`
  String get no_report_available {
    return Intl.message(
      'No report available',
      name: 'no_report_available',
      desc: '',
      args: [],
    );
  }

  /// `No Notifications available`
  String get no_notifications_available {
    return Intl.message(
      'No Notifications available',
      name: 'no_notifications_available',
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

  /// `Report list is empty`
  String get report_list_is_empty {
    return Intl.message(
      'Report list is empty',
      name: 'report_list_is_empty',
      desc: '',
      args: [],
    );
  }

  /// `Effective Date`
  String get effective_date {
    return Intl.message(
      'Effective Date',
      name: 'effective_date',
      desc: '',
      args: [],
    );
  }

  /// `Effective Time`
  String get effective_time {
    return Intl.message(
      'Effective Time',
      name: 'effective_time',
      desc: '',
      args: [],
    );
  }

  /// `Employee Name`
  String get employee_name {
    return Intl.message(
      'Employee Name',
      name: 'employee_name',
      desc: '',
      args: [],
    );
  }

  /// `Approve`
  String get approve {
    return Intl.message(
      'Approve',
      name: 'approve',
      desc: '',
      args: [],
    );
  }

  /// `Reject`
  String get reject {
    return Intl.message(
      'Reject',
      name: 'reject',
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

  /// `Created Date`
  String get created_date {
    return Intl.message(
      'Created Date',
      name: 'created_date',
      desc: '',
      args: [],
    );
  }

  /// `Type`
  String get type {
    return Intl.message(
      'Type',
      name: 'type',
      desc: '',
      args: [],
    );
  }

  /// `Employee Details`
  String get employee_details {
    return Intl.message(
      'Employee Details',
      name: 'employee_details',
      desc: '',
      args: [],
    );
  }

  /// `Employee ID`
  String get employee_id {
    return Intl.message(
      'Employee ID',
      name: 'employee_id',
      desc: '',
      args: [],
    );
  }

  /// `Employee Department`
  String get employee_department {
    return Intl.message(
      'Employee Department',
      name: 'employee_department',
      desc: '',
      args: [],
    );
  }

  /// `Notes`
  String get notes {
    return Intl.message(
      'Notes',
      name: 'notes',
      desc: '',
      args: [],
    );
  }

  /// `See More`
  String get see_more {
    return Intl.message(
      'See More',
      name: 'see_more',
      desc: '',
      args: [],
    );
  }

  /// `See Less`
  String get see_less {
    return Intl.message(
      'See Less',
      name: 'see_less',
      desc: '',
      args: [],
    );
  }

  /// `Approvals`
  String get approvals {
    return Intl.message(
      'Approvals',
      name: 'approvals',
      desc: '',
      args: [],
    );
  }

  /// `Attachments`
  String get attachments {
    return Intl.message(
      'Attachments',
      name: 'attachments',
      desc: '',
      args: [],
    );
  }

  /// `Filter by`
  String get filter_by {
    return Intl.message(
      'Filter by',
      name: 'filter_by',
      desc: '',
      args: [],
    );
  }

  /// `Reset`
  String get reset {
    return Intl.message(
      'Reset',
      name: 'reset',
      desc: '',
      args: [],
    );
  }

  /// `Last Clock-in`
  String get last_check_in {
    return Intl.message(
      'Last Clock-in',
      name: 'last_check_in',
      desc: '',
      args: [],
    );
  }

  /// `First Clock-in`
  String get first_check_in {
    return Intl.message(
      'First Clock-in',
      name: 'first_check_in',
      desc: '',
      args: [],
    );
  }

  /// `Clock Out`
  String get check_out {
    return Intl.message(
      'Clock Out',
      name: 'check_out',
      desc: '',
      args: [],
    );
  }

  /// `Make a request`
  String get make_request {
    return Intl.message(
      'Make a request',
      name: 'make_request',
      desc: '',
      args: [],
    );
  }

  /// `Vacation`
  String get leaves {
    return Intl.message(
      'Vacation',
      name: 'leaves',
      desc: '',
      args: [],
    );
  }

  /// `Excuses`
  String get excuses {
    return Intl.message(
      'Excuses',
      name: 'excuses',
      desc: '',
      args: [],
    );
  }

  /// `Vacation`
  String get vacation {
    return Intl.message(
      'Vacation',
      name: 'vacation',
      desc: '',
      args: [],
    );
  }

  /// `Fingerprint`
  String get finger_print {
    return Intl.message(
      'Fingerprint',
      name: 'finger_print',
      desc: '',
      args: [],
    );
  }

  /// `Extra-Services`
  String get extra_service {
    return Intl.message(
      'Extra-Services',
      name: 'extra_service',
      desc: '',
      args: [],
    );
  }

  /// `Others`
  String get others {
    return Intl.message(
      'Others',
      name: 'others',
      desc: '',
      args: [],
    );
  }

  /// `Today`
  String get today {
    return Intl.message(
      'Today',
      name: 'today',
      desc: '',
      args: [],
    );
  }

  /// `Yesterday`
  String get yesterday {
    return Intl.message(
      'Yesterday',
      name: 'yesterday',
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

  /// `Hours`
  String get hours {
    return Intl.message(
      'Hours',
      name: 'hours',
      desc: '',
      args: [],
    );
  }

  /// `Minutes`
  String get minutes {
    return Intl.message(
      'Minutes',
      name: 'minutes',
      desc: '',
      args: [],
    );
  }

  /// `Withdraw`
  String get withdraw {
    return Intl.message(
      'Withdraw',
      name: 'withdraw',
      desc: '',
      args: [],
    );
  }

  /// `This field is mandatory`
  String get reqField {
    return Intl.message(
      'This field is mandatory',
      name: 'reqField',
      desc: '',
      args: [],
    );
  }

  /// `Select`
  String get select {
    return Intl.message(
      'Select',
      name: 'select',
      desc: '',
      args: [],
    );
  }

  /// `No Data Found`
  String get no_data_found {
    return Intl.message(
      'No Data Found',
      name: 'no_data_found',
      desc: '',
      args: [],
    );
  }

  /// `Employee`
  String get employee {
    return Intl.message(
      'Employee',
      name: 'employee',
      desc: '',
      args: [],
    );
  }

  /// `Filter`
  String get filter {
    return Intl.message(
      'Filter',
      name: 'filter',
      desc: '',
      args: [],
    );
  }

  /// `Request Type`
  String get request_type {
    return Intl.message(
      'Request Type',
      name: 'request_type',
      desc: '',
      args: [],
    );
  }

  /// `Request Status`
  String get request_status {
    return Intl.message(
      'Request Status',
      name: 'request_status',
      desc: '',
      args: [],
    );
  }

  /// `In progress`
  String get in_progress {
    return Intl.message(
      'In progress',
      name: 'in_progress',
      desc: '',
      args: [],
    );
  }

  /// `Approved`
  String get approved {
    return Intl.message(
      'Approved',
      name: 'approved',
      desc: '',
      args: [],
    );
  }

  /// `Rejected`
  String get rejected {
    return Intl.message(
      'Rejected',
      name: 'rejected',
      desc: '',
      args: [],
    );
  }

  /// `Cancelled`
  String get cancelled {
    return Intl.message(
      'Cancelled',
      name: 'cancelled',
      desc: '',
      args: [],
    );
  }

  /// `Withdrawn`
  String get withdrawn {
    return Intl.message(
      'Withdrawn',
      name: 'withdrawn',
      desc: '',
      args: [],
    );
  }

  /// `Apply Filter`
  String get apply_filter {
    return Intl.message(
      'Apply Filter',
      name: 'apply_filter',
      desc: '',
      args: [],
    );
  }

  /// `on`
  String get on {
    return Intl.message(
      'on',
      name: 'on',
      desc: '',
      args: [],
    );
  }

  /// `New Request`
  String get new_request {
    return Intl.message(
      'New Request',
      name: 'new_request',
      desc: '',
      args: [],
    );
  }

  /// `Vacation Type`
  String get leave_type {
    return Intl.message(
      'Vacation Type',
      name: 'leave_type',
      desc: '',
      args: [],
    );
  }

  /// `Excuse Type`
  String get excuse_type {
    return Intl.message(
      'Excuse Type',
      name: 'excuse_type',
      desc: '',
      args: [],
    );
  }

  /// `Service Type`
  String get service_type {
    return Intl.message(
      'Service Type',
      name: 'service_type',
      desc: '',
      args: [],
    );
  }

  /// `Days available`
  String get day_available {
    return Intl.message(
      'Days available',
      name: 'day_available',
      desc: '',
      args: [],
    );
  }

  /// `Select date`
  String get select_date {
    return Intl.message(
      'Select date',
      name: 'select_date',
      desc: '',
      args: [],
    );
  }

  /// `Start`
  String get start {
    return Intl.message(
      'Start',
      name: 'start',
      desc: '',
      args: [],
    );
  }

  /// `End`
  String get end {
    return Intl.message(
      'End',
      name: 'end',
      desc: '',
      args: [],
    );
  }

  /// `Start`
  String get start_time {
    return Intl.message(
      'Start',
      name: 'start_time',
      desc: '',
      args: [],
    );
  }

  /// `End`
  String get end_time {
    return Intl.message(
      'End',
      name: 'end_time',
      desc: '',
      args: [],
    );
  }

  /// `Attach Documents`
  String get attach_documents {
    return Intl.message(
      'Attach Documents',
      name: 'attach_documents',
      desc: '',
      args: [],
    );
  }

  /// `Upload`
  String get upload {
    return Intl.message(
      'Upload',
      name: 'upload',
      desc: '',
      args: [],
    );
  }

  /// `You can add to 5 files`
  String get files_limit {
    return Intl.message(
      'You can add to 5 files',
      name: 'files_limit',
      desc: '',
      args: [],
    );
  }

  /// `ِAttachment size must be 3MB maximum`
  String get attachment_size_error {
    return Intl.message(
      'ِAttachment size must be 3MB maximum',
      name: 'attachment_size_error',
      desc: '',
      args: [],
    );
  }

  /// `Submit Request`
  String get submit_request {
    return Intl.message(
      'Submit Request',
      name: 'submit_request',
      desc: '',
      args: [],
    );
  }

  /// `Start time should be before end time`
  String get start_time_error {
    return Intl.message(
      'Start time should be before end time',
      name: 'start_time_error',
      desc: '',
      args: [],
    );
  }

  /// `You must select vacation type`
  String get vacation_type_error {
    return Intl.message(
      'You must select vacation type',
      name: 'vacation_type_error',
      desc: '',
      args: [],
    );
  }

  /// `You must select employee`
  String get employee_error {
    return Intl.message(
      'You must select employee',
      name: 'employee_error',
      desc: '',
      args: [],
    );
  }

  /// `You must select excuse type`
  String get excuse_type_error {
    return Intl.message(
      'You must select excuse type',
      name: 'excuse_type_error',
      desc: '',
      args: [],
    );
  }

  /// `You must select service type`
  String get service_type_error {
    return Intl.message(
      'You must select service type',
      name: 'service_type_error',
      desc: '',
      args: [],
    );
  }

  /// `Send successfully`
  String get send_successfully {
    return Intl.message(
      'Send successfully',
      name: 'send_successfully',
      desc: '',
      args: [],
    );
  }

  /// `Hours available`
  String get hours_available {
    return Intl.message(
      'Hours available',
      name: 'hours_available',
      desc: '',
      args: [],
    );
  }

  /// `Date`
  String get date {
    return Intl.message(
      'Date',
      name: 'date',
      desc: '',
      args: [],
    );
  }

  /// `Select time`
  String get select_time {
    return Intl.message(
      'Select time',
      name: 'select_time',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to submit`
  String get submit_request_confirmation {
    return Intl.message(
      'Are you sure you want to submit',
      name: 'submit_request_confirmation',
      desc: '',
      args: [],
    );
  }

  /// `to`
  String get to {
    return Intl.message(
      'to',
      name: 'to',
      desc: '',
      args: [],
    );
  }

  /// `from`
  String get from {
    return Intl.message(
      'from',
      name: 'from',
      desc: '',
      args: [],
    );
  }

  /// `Submit`
  String get submit {
    return Intl.message(
      'Submit',
      name: 'submit',
      desc: '',
      args: [],
    );
  }

  /// `Reject Request`
  String get reject_request {
    return Intl.message(
      'Reject Request',
      name: 'reject_request',
      desc: '',
      args: [],
    );
  }

  /// `Rejection Reason`
  String get reject_reason {
    return Intl.message(
      'Rejection Reason',
      name: 'reject_reason',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to `
  String get confirmation_msg {
    return Intl.message(
      'Are you sure you want to ',
      name: 'confirmation_msg',
      desc: '',
      args: [],
    );
  }

  /// `Yes`
  String get yes {
    return Intl.message(
      'Yes',
      name: 'yes',
      desc: '',
      args: [],
    );
  }

  /// `Request`
  String get request {
    return Intl.message(
      'Request',
      name: 'request',
      desc: '',
      args: [],
    );
  }

  /// `Status`
  String get status {
    return Intl.message(
      'Status',
      name: 'status',
      desc: '',
      args: [],
    );
  }

  /// `?`
  String get question_mark {
    return Intl.message(
      '?',
      name: 'question_mark',
      desc: '',
      args: [],
    );
  }

  /// `Approved Successfully`
  String get approved_successfully {
    return Intl.message(
      'Approved Successfully',
      name: 'approved_successfully',
      desc: '',
      args: [],
    );
  }

  /// `Reject Successfully`
  String get reject_successfully {
    return Intl.message(
      'Reject Successfully',
      name: 'reject_successfully',
      desc: '',
      args: [],
    );
  }

  /// `Withdrawn Successfully`
  String get withdrawn_successfully {
    return Intl.message(
      'Withdrawn Successfully',
      name: 'withdrawn_successfully',
      desc: '',
      args: [],
    );
  }

  /// `Canceled Successfully`
  String get canceled_successfully {
    return Intl.message(
      'Canceled Successfully',
      name: 'canceled_successfully',
      desc: '',
      args: [],
    );
  }

  /// `Submitted Successfully`
  String get submitted_successfully {
    return Intl.message(
      'Submitted Successfully',
      name: 'submitted_successfully',
      desc: '',
      args: [],
    );
  }

  /// `h`
  String get h {
    return Intl.message(
      'h',
      name: 'h',
      desc: '',
      args: [],
    );
  }

  /// `m`
  String get m {
    return Intl.message(
      'm',
      name: 'm',
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

  /// `Developed by Future Face`
  String get developed_by {
    return Intl.message(
      'Developed by Future Face',
      name: 'developed_by',
      desc: '',
      args: [],
    );
  }

  /// `Version`
  String get version {
    return Intl.message(
      'Version',
      name: 'version',
      desc: '',
      args: [],
    );
  }

  /// `Take a picture of your whole face`
  String get take_picture_whole_face {
    return Intl.message(
      'Take a picture of your whole face',
      name: 'take_picture_whole_face',
      desc: '',
      args: [],
    );
  }

  /// `To make sure it’s really you clocking in and out, we check your clock in and out pictures against this picture. It’s is only for authentication purposes.`
  String get take_picture_whole_face_msg {
    return Intl.message(
      'To make sure it’s really you clocking in and out, we check your clock in and out pictures against this picture. It’s is only for authentication purposes.',
      name: 'take_picture_whole_face_msg',
      desc: '',
      args: [],
    );
  }

  /// `I’m ready`
  String get iam_ready {
    return Intl.message(
      'I’m ready',
      name: 'iam_ready',
      desc: '',
      args: [],
    );
  }

  /// `Keep your face in the oval`
  String get keep_your_face {
    return Intl.message(
      'Keep your face in the oval',
      name: 'keep_your_face',
      desc: '',
      args: [],
    );
  }

  /// `Is your photo clear?`
  String get your_photo_clear {
    return Intl.message(
      'Is your photo clear?',
      name: 'your_photo_clear',
      desc: '',
      args: [],
    );
  }

  /// `Make sure we can clearly see your whole face.`
  String get make_sure_photo_clear {
    return Intl.message(
      'Make sure we can clearly see your whole face.',
      name: 'make_sure_photo_clear',
      desc: '',
      args: [],
    );
  }

  /// `Yes, clear`
  String get yes_clear {
    return Intl.message(
      'Yes, clear',
      name: 'yes_clear',
      desc: '',
      args: [],
    );
  }

  /// `Retake`
  String get retake {
    return Intl.message(
      'Retake',
      name: 'retake',
      desc: '',
      args: [],
    );
  }

  /// ` Succeeded `
  String get clock_success {
    return Intl.message(
      ' Succeeded ',
      name: 'clock_success',
      desc: '',
      args: [],
    );
  }

  /// ` Failed `
  String get check_in_failed {
    return Intl.message(
      ' Failed ',
      name: 'check_in_failed',
      desc: '',
      args: [],
    );
  }

  /// `Clock In`
  String get clock_in {
    return Intl.message(
      'Clock In',
      name: 'clock_in',
      desc: '',
      args: [],
    );
  }

  /// `Clock Out`
  String get clock_out {
    return Intl.message(
      'Clock Out',
      name: 'clock_out',
      desc: '',
      args: [],
    );
  }

  /// `Due to inaccurate picture or location, please try again`
  String get picture_failed {
    return Intl.message(
      'Due to inaccurate picture or location, please try again',
      name: 'picture_failed',
      desc: '',
      args: [],
    );
  }

  /// `Notifications`
  String get notifications {
    return Intl.message(
      'Notifications',
      name: 'notifications',
      desc: '',
      args: [],
    );
  }

  /// `Time`
  String get time {
    return Intl.message(
      'Time',
      name: 'time',
      desc: '',
      args: [],
    );
  }

  /// `Clock in or out?`
  String get checkIn_or_checkOut {
    return Intl.message(
      'Clock in or out?',
      name: 'checkIn_or_checkOut',
      desc: '',
      args: [],
    );
  }

  /// `Absence Date`
  String get absence_date {
    return Intl.message(
      'Absence Date',
      name: 'absence_date',
      desc: '',
      args: [],
    );
  }

  /// `Send date`
  String get send_date {
    return Intl.message(
      'Send date',
      name: 'send_date',
      desc: '',
      args: [],
    );
  }

  /// `Request date`
  String get request_date {
    return Intl.message(
      'Request date',
      name: 'request_date',
      desc: '',
      args: [],
    );
  }

  /// `Send Reply`
  String get send_reply {
    return Intl.message(
      'Send Reply',
      name: 'send_reply',
      desc: '',
      args: [],
    );
  }

  /// `Your reply`
  String get your_reply {
    return Intl.message(
      'Your reply',
      name: 'your_reply',
      desc: '',
      args: [],
    );
  }

  /// `Checking Location`
  String get checking_location {
    return Intl.message(
      'Checking Location',
      name: 'checking_location',
      desc: '',
      args: [],
    );
  }

  /// `Please allow location permission`
  String get allow_location_permission {
    return Intl.message(
      'Please allow location permission',
      name: 'allow_location_permission',
      desc: '',
      args: [],
    );
  }

  /// `Your attendance location not added`
  String get attendance_location_not_added {
    return Intl.message(
      'Your attendance location not added',
      name: 'attendance_location_not_added',
      desc: '',
      args: [],
    );
  }

  /// `Your attendance diameter not added`
  String get attendance_diameter_not_added {
    return Intl.message(
      'Your attendance diameter not added',
      name: 'attendance_diameter_not_added',
      desc: '',
      args: [],
    );
  }

  /// `You are outside the location`
  String get you_not_within_any_branch {
    return Intl.message(
      'You are outside the location',
      name: 'you_not_within_any_branch',
      desc: '',
      args: [],
    );
  }

  /// `Reason`
  String get reason {
    return Intl.message(
      'Reason',
      name: 'reason',
      desc: '',
      args: [],
    );
  }

  /// `Statement Request`
  String get statement {
    return Intl.message(
      'Statement Request',
      name: 'statement',
      desc: '',
      args: [],
    );
  }

  /// `Reply`
  String get reply {
    return Intl.message(
      'Reply',
      name: 'reply',
      desc: '',
      args: [],
    );
  }

  /// `Reply Sent Successfully`
  String get reply_sent_successfully {
    return Intl.message(
      'Reply Sent Successfully',
      name: 'reply_sent_successfully',
      desc: '',
      args: [],
    );
  }

  /// `Verification Request`
  String get verification_request {
    return Intl.message(
      'Verification Request',
      name: 'verification_request',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Attendance`
  String get confirm_attendance {
    return Intl.message(
      'Confirm Attendance',
      name: 'confirm_attendance',
      desc: '',
      args: [],
    );
  }

  /// `Last Clock-out`
  String get last_check_out {
    return Intl.message(
      'Last Clock-out',
      name: 'last_check_out',
      desc: '',
      args: [],
    );
  }

  /// `Clock-in/Clock-out`
  String get check_in_out {
    return Intl.message(
      'Clock-in/Clock-out',
      name: 'check_in_out',
      desc: '',
      args: [],
    );
  }

  /// `New verification request`
  String get new_verification_request {
    return Intl.message(
      'New verification request',
      name: 'new_verification_request',
      desc: '',
      args: [],
    );
  }

  /// `Total hours`
  String get total_hours {
    return Intl.message(
      'Total hours',
      name: 'total_hours',
      desc: '',
      args: [],
    );
  }

  /// `Shortage hours`
  String get missing_hours {
    return Intl.message(
      'Shortage hours',
      name: 'missing_hours',
      desc: '',
      args: [],
    );
  }

  /// `Overtime`
  String get over_time {
    return Intl.message(
      'Overtime',
      name: 'over_time',
      desc: '',
      args: [],
    );
  }

  /// `Shift`
  String get shift {
    return Intl.message(
      'Shift',
      name: 'shift',
      desc: '',
      args: [],
    );
  }

  /// `Absent`
  String get absent {
    return Intl.message(
      'Absent',
      name: 'absent',
      desc: '',
      args: [],
    );
  }

  /// `Lateness`
  String get lateness {
    return Intl.message(
      'Lateness',
      name: 'lateness',
      desc: '',
      args: [],
    );
  }

  /// `No attendance recorded`
  String get no_attendance_recorded {
    return Intl.message(
      'No attendance recorded',
      name: 'no_attendance_recorded',
      desc: '',
      args: [],
    );
  }

  /// `kindly provide details of your absence to the relevant department`
  String get no_attendance_recorded_msg {
    return Intl.message(
      'kindly provide details of your absence to the relevant department',
      name: 'no_attendance_recorded_msg',
      desc: '',
      args: [],
    );
  }

  /// `It’s your annual day!`
  String get annual_day {
    return Intl.message(
      'It’s your annual day!',
      name: 'annual_day',
      desc: '',
      args: [],
    );
  }

  /// `No work today, it's a holiday!`
  String get holiday_day {
    return Intl.message(
      'No work today, it\'s a holiday!',
      name: 'holiday_day',
      desc: '',
      args: [],
    );
  }

  /// `Edit`
  String get edit {
    return Intl.message(
      'Edit',
      name: 'edit',
      desc: '',
      args: [],
    );
  }

  /// `Owned By`
  String get owned_by {
    return Intl.message(
      'Owned By',
      name: 'owned_by',
      desc: '',
      args: [],
    );
  }

  /// `Statement Details`
  String get statement_details {
    return Intl.message(
      'Statement Details',
      name: 'statement_details',
      desc: '',
      args: [],
    );
  }

  /// `Approve Request`
  String get approve_request {
    return Intl.message(
      'Approve Request',
      name: 'approve_request',
      desc: '',
      args: [],
    );
  }

  /// `Future Face`
  String get future_face {
    return Intl.message(
      'Future Face',
      name: 'future_face',
      desc: '',
      args: [],
    );
  }

  /// `copy rights © Robox 2023`
  String get copy_right {
    return Intl.message(
      'copy rights © Robox 2023',
      name: 'copy_right',
      desc: '',
      args: [],
    );
  }

  /// `Confirm`
  String get confirm {
    return Intl.message(
      'Confirm',
      name: 'confirm',
      desc: '',
      args: [],
    );
  }

  /// `OnTime`
  String get on_time {
    return Intl.message(
      'OnTime',
      name: 'on_time',
      desc: '',
      args: [],
    );
  }

  /// `hrs`
  String get hrs {
    return Intl.message(
      'hrs',
      name: 'hrs',
      desc: '',
      args: [],
    );
  }

  /// `Waiting Reply`
  String get waiting_employee_reply {
    return Intl.message(
      'Waiting Reply',
      name: 'waiting_employee_reply',
      desc: '',
      args: [],
    );
  }

  /// `Replied`
  String get employee_replied {
    return Intl.message(
      'Replied',
      name: 'employee_replied',
      desc: '',
      args: [],
    );
  }

  /// `Not Replied`
  String get employee_not_replied {
    return Intl.message(
      'Not Replied',
      name: 'employee_not_replied',
      desc: '',
      args: [],
    );
  }

  /// `Request Time`
  String get request_time {
    return Intl.message(
      'Request Time',
      name: 'request_time',
      desc: '',
      args: [],
    );
  }

  /// `Schedule Name`
  String get schedule_name {
    return Intl.message(
      'Schedule Name',
      name: 'schedule_name',
      desc: '',
      args: [],
    );
  }

  /// `Schedule Assign Date`
  String get schedule_assign_date {
    return Intl.message(
      'Schedule Assign Date',
      name: 'schedule_assign_date',
      desc: '',
      args: [],
    );
  }

  /// `Verification`
  String get verification {
    return Intl.message(
      'Verification',
      name: 'verification',
      desc: '',
      args: [],
    );
  }

  /// `Start Time`
  String get start_time_verification {
    return Intl.message(
      'Start Time',
      name: 'start_time_verification',
      desc: '',
      args: [],
    );
  }

  /// `End Time`
  String get end_time_verification {
    return Intl.message(
      'End Time',
      name: 'end_time_verification',
      desc: '',
      args: [],
    );
  }

  /// `Pleas, upload verification image first`
  String get upload_verification_image {
    return Intl.message(
      'Pleas, upload verification image first',
      name: 'upload_verification_image',
      desc: '',
      args: [],
    );
  }

  /// `New Update Available`
  String get newUpdateAvailable {
    return Intl.message(
      'New Update Available',
      name: 'newUpdateAvailable',
      desc: '',
      args: [],
    );
  }

  /// `There is a newer version of Robox available please update it now.`
  String get newerVersionRobox {
    return Intl.message(
      'There is a newer version of Robox available please update it now.',
      name: 'newerVersionRobox',
      desc: '',
      args: [],
    );
  }

  /// `Update Now`
  String get updateNow {
    return Intl.message(
      'Update Now',
      name: 'updateNow',
      desc: '',
      args: [],
    );
  }

  /// `Later`
  String get later {
    return Intl.message(
      'Later',
      name: 'later',
      desc: '',
      args: [],
    );
  }

  /// `All`
  String get all {
    return Intl.message(
      'All',
      name: 'all',
      desc: '',
      args: [],
    );
  }

  /// `Present`
  String get present {
    return Intl.message(
      'Present',
      name: 'present',
      desc: '',
      args: [],
    );
  }

  /// `Official Vacation`
  String get official_vacation {
    return Intl.message(
      'Official Vacation',
      name: 'official_vacation',
      desc: '',
      args: [],
    );
  }

  /// `Day Off`
  String get day_off {
    return Intl.message(
      'Day Off',
      name: 'day_off',
      desc: '',
      args: [],
    );
  }

  /// `Lateness Statement`
  String get lateness_statement {
    return Intl.message(
      'Lateness Statement',
      name: 'lateness_statement',
      desc: '',
      args: [],
    );
  }

  /// `Absence Statement`
  String get absence_statement {
    return Intl.message(
      'Absence Statement',
      name: 'absence_statement',
      desc: '',
      args: [],
    );
  }

  /// `Late Check-In`
  String get late_check_in {
    return Intl.message(
      'Late Check-In',
      name: 'late_check_in',
      desc: '',
      args: [],
    );
  }

  /// `Early Check-Out`
  String get early_check_out {
    return Intl.message(
      'Early Check-Out',
      name: 'early_check_out',
      desc: '',
      args: [],
    );
  }

  /// `Attendance Excluded`
  String get attendance_excluded {
    return Intl.message(
      'Attendance Excluded',
      name: 'attendance_excluded',
      desc: '',
      args: [],
    );
  }

  /// `Excuse`
  String get excuse {
    return Intl.message(
      'Excuse',
      name: 'excuse',
      desc: '',
      args: [],
    );
  }

  /// `Fingerprint: Attendance`
  String get fingerprint_attendance {
    return Intl.message(
      'Fingerprint: Attendance',
      name: 'fingerprint_attendance',
      desc: '',
      args: [],
    );
  }

  /// `Fingerprint: Leave`
  String get fingerprint_leave {
    return Intl.message(
      'Fingerprint: Leave',
      name: 'fingerprint_leave',
      desc: '',
      args: [],
    );
  }

  /// `Incomplete operations`
  String get incomplete_operations {
    return Intl.message(
      'Incomplete operations',
      name: 'incomplete_operations',
      desc: '',
      args: [],
    );
  }

  /// `Reports`
  String get reports {
    return Intl.message(
      'Reports',
      name: 'reports',
      desc: '',
      args: [],
    );
  }

  /// `Press twice to exit`
  String get press_twice_to_exit {
    return Intl.message(
      'Press twice to exit',
      name: 'press_twice_to_exit',
      desc: '',
      args: [],
    );
  }

  /// `Job title`
  String get job_title {
    return Intl.message(
      'Job title',
      name: 'job_title',
      desc: '',
      args: [],
    );
  }

  /// `Approved absence statement`
  String get approved_absence_statement {
    return Intl.message(
      'Approved absence statement',
      name: 'approved_absence_statement',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en', countryCode: 'US'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
