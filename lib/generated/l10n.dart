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

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
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

  /// `Chats`
  String get chats {
    return Intl.message(
      'Chats',
      name: 'chats',
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

  /// `Empty Records`
  String get emptyRecords {
    return Intl.message(
      'Empty Records',
      name: 'emptyRecords',
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

  /// `Search`
  String get search {
    return Intl.message(
      'Search',
      name: 'search',
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

  /// `Add More`
  String get addMore {
    return Intl.message(
      'Add More',
      name: 'addMore',
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

  /// `Save`
  String get save {
    return Intl.message(
      'Save',
      name: 'save',
      desc: '',
      args: [],
    );
  }

  /// `Back`
  String get back {
    return Intl.message(
      'Back',
      name: 'back',
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

  /// `Confirm`
  String get confirm {
    return Intl.message(
      'Confirm',
      name: 'confirm',
      desc: '',
      args: [],
    );
  }

  /// `Please enter at least 6 letters or numbers`
  String get passValidation {
    return Intl.message(
      'Please enter at least 6 letters or numbers',
      name: 'passValidation',
      desc: '',
      args: [],
    );
  }

  /// `An email must in format “email@mail.com”`
  String get mailValidation {
    return Intl.message(
      'An email must in format “email@mail.com”',
      name: 'mailValidation',
      desc: '',
      args: [],
    );
  }

  /// `A phone number  contains 10 digits and start with 05`
  String get phoneValidation {
    return Intl.message(
      'A phone number  contains 10 digits and start with 05',
      name: 'phoneValidation',
      desc: '',
      args: [],
    );
  }

  /// `Please enter the password Match`
  String get confirmValidation {
    return Intl.message(
      'Please enter the password Match',
      name: 'confirmValidation',
      desc: '',
      args: [],
    );
  }

  /// `Please enter the address.`
  String get AddressValidation {
    return Intl.message(
      'Please enter the address.',
      name: 'AddressValidation',
      desc: '',
      args: [],
    );
  }

  /// `A full name contains only Text`
  String get nameValidation {
    return Intl.message(
      'A full name contains only Text',
      name: 'nameValidation',
      desc: '',
      args: [],
    );
  }

  /// `An id/iqama contains 10 digits and start with 1 or 2`
  String get nationalIDValidation {
    return Intl.message(
      'An id/iqama contains 10 digits and start with 1 or 2',
      name: 'nationalIDValidation',
      desc: '',
      args: [],
    );
  }

  /// `Camera`
  String get camera {
    return Intl.message(
      'Camera',
      name: 'camera',
      desc: '',
      args: [],
    );
  }

  /// `Gallery`
  String get gallery {
    return Intl.message(
      'Gallery',
      name: 'gallery',
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

  /// `Log in to your account`
  String get login_your_account {
    return Intl.message(
      'Log in to your account',
      name: 'login_your_account',
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

  /// `Pending`
  String get pending {
    return Intl.message(
      'Pending',
      name: 'pending',
      desc: '',
      args: [],
    );
  }

  /// `On the way`
  String get on_the_way {
    return Intl.message(
      'On the way',
      name: 'on_the_way',
      desc: '',
      args: [],
    );
  }

  /// `Completed`
  String get Complete {
    return Intl.message(
      'Completed',
      name: 'Complete',
      desc: '',
      args: [],
    );
  }

  /// `Direction`
  String get direction {
    return Intl.message(
      'Direction',
      name: 'direction',
      desc: '',
      args: [],
    );
  }

  /// `Go to Pick up`
  String get go_to_pick_up {
    return Intl.message(
      'Go to Pick up',
      name: 'go_to_pick_up',
      desc: '',
      args: [],
    );
  }

  /// `Pick up`
  String get pick_up {
    return Intl.message(
      'Pick up',
      name: 'pick_up',
      desc: '',
      args: [],
    );
  }

  /// `Deliver to`
  String get deliver_to {
    return Intl.message(
      'Deliver to',
      name: 'deliver_to',
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

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your password`
  String get password_validation {
    return Intl.message(
      'Please enter your password',
      name: 'password_validation',
      desc: '',
      args: [],
    );
  }

  /// `Forget Password`
  String get forget_password {
    return Intl.message(
      'Forget Password',
      name: 'forget_password',
      desc: '',
      args: [],
    );
  }

  /// `Remember me`
  String get remember_me {
    return Intl.message(
      'Remember me',
      name: 'remember_me',
      desc: '',
      args: [],
    );
  }

  /// `Log in`
  String get login {
    return Intl.message(
      'Log in',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Don’t have an account?`
  String get dont_have_account {
    return Intl.message(
      'Don’t have an account?',
      name: 'dont_have_account',
      desc: '',
      args: [],
    );
  }

  /// `Create Account`
  String get create_account {
    return Intl.message(
      'Create Account',
      name: 'create_account',
      desc: '',
      args: [],
    );
  }

  /// `Sign up`
  String get signup {
    return Intl.message(
      'Sign up',
      name: 'signup',
      desc: '',
      args: [],
    );
  }

  /// `min`
  String get min {
    return Intl.message(
      'min',
      name: 'min',
      desc: '',
      args: [],
    );
  }

  /// `km`
  String get km {
    return Intl.message(
      'km',
      name: 'km',
      desc: '',
      args: [],
    );
  }

  /// `Go To Delivery`
  String get go_to_delivery {
    return Intl.message(
      'Go To Delivery',
      name: 'go_to_delivery',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your details.`
  String get please_enter_your_details {
    return Intl.message(
      'Please enter your details.',
      name: 'please_enter_your_details',
      desc: '',
      args: [],
    );
  }

  /// `Add your information`
  String get add_your_information {
    return Intl.message(
      'Add your information',
      name: 'add_your_information',
      desc: '',
      args: [],
    );
  }

  /// `ID/Iqama`
  String get id_iqama {
    return Intl.message(
      'ID/Iqama',
      name: 'id_iqama',
      desc: '',
      args: [],
    );
  }

  /// `start with 1 or 2`
  String get start_with_1_or_2 {
    return Intl.message(
      'start with 1 or 2',
      name: 'start_with_1_or_2',
      desc: '',
      args: [],
    );
  }

  /// `Full Name`
  String get full_name {
    return Intl.message(
      'Full Name',
      name: 'full_name',
      desc: '',
      args: [],
    );
  }

  /// `Subscription type`
  String get subscription_type {
    return Intl.message(
      'Subscription type',
      name: 'subscription_type',
      desc: '',
      args: [],
    );
  }

  /// `Phone Number`
  String get phone_number {
    return Intl.message(
      'Phone Number',
      name: 'phone_number',
      desc: '',
      args: [],
    );
  }

  /// `I agree to the terms and conditions of the application`
  String get i_agree_to_the_terms_and_conditions_of_the_application {
    return Intl.message(
      'I agree to the terms and conditions of the application',
      name: 'i_agree_to_the_terms_and_conditions_of_the_application',
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

  /// `Refresh`
  String get refresh {
    return Intl.message(
      'Refresh',
      name: 'refresh',
      desc: '',
      args: [],
    );
  }

  /// `first and last name`
  String get first_last_name {
    return Intl.message(
      'first and last name',
      name: 'first_last_name',
      desc: '',
      args: [],
    );
  }

  /// `Select subscription type`
  String get select_subscription_type {
    return Intl.message(
      'Select subscription type',
      name: 'select_subscription_type',
      desc: '',
      args: [],
    );
  }

  /// `Welcome to ndf! Create your account and start tracking your orders with ease.`
  String get create_account_msg {
    return Intl.message(
      'Welcome to ndf! Create your account and start tracking your orders with ease.',
      name: 'create_account_msg',
      desc: '',
      args: [],
    );
  }

  /// `Terms of Use`
  String get terms_of_use {
    return Intl.message(
      'Terms of Use',
      name: 'terms_of_use',
      desc: '',
      args: [],
    );
  }

  /// `At least 7 characters`
  String get character_length {
    return Intl.message(
      'At least 7 characters',
      name: 'character_length',
      desc: '',
      args: [],
    );
  }

  /// `Create account successful`
  String get create_account_successful {
    return Intl.message(
      'Create account successful',
      name: 'create_account_successful',
      desc: '',
      args: [],
    );
  }

  /// `Login successful`
  String get login_successful {
    return Intl.message(
      'Login successful',
      name: 'login_successful',
      desc: '',
      args: [],
    );
  }

  /// `At least 1 number`
  String get at_least_number {
    return Intl.message(
      'At least 1 number',
      name: 'at_least_number',
      desc: '',
      args: [],
    );
  }

  /// `At least 1 uppercase letter`
  String get at_least_uppercase {
    return Intl.message(
      'At least 1 uppercase letter',
      name: 'at_least_uppercase',
      desc: '',
      args: [],
    );
  }

  /// `At least 1 lowercase letter`
  String get at_least_lowercase {
    return Intl.message(
      'At least 1 lowercase letter',
      name: 'at_least_lowercase',
      desc: '',
      args: [],
    );
  }

  /// `At least 1 special character (#,@,$...)`
  String get at_least_special {
    return Intl.message(
      'At least 1 special character (#,@,\$...)',
      name: 'at_least_special',
      desc: '',
      args: [],
    );
  }

  /// `Welcome back!`
  String get welcome_back {
    return Intl.message(
      'Welcome back!',
      name: 'welcome_back',
      desc: '',
      args: [],
    );
  }

  /// `Ensure safe and accurate delivery by providing your national address.`
  String get welcome_back_msg {
    return Intl.message(
      'Ensure safe and accurate delivery by providing your national address.',
      name: 'welcome_back_msg',
      desc: '',
      args: [],
    );
  }

  /// `National Address`
  String get national_address {
    return Intl.message(
      'National Address',
      name: 'national_address',
      desc: '',
      args: [],
    );
  }

  /// `Short Address`
  String get short_address {
    return Intl.message(
      'Short Address',
      name: 'short_address',
      desc: '',
      args: [],
    );
  }

  /// `City`
  String get city {
    return Intl.message(
      'City',
      name: 'city',
      desc: '',
      args: [],
    );
  }

  /// `Postal Code`
  String get postal_code {
    return Intl.message(
      'Postal Code',
      name: 'postal_code',
      desc: '',
      args: [],
    );
  }

  /// `District`
  String get district {
    return Intl.message(
      'District',
      name: 'district',
      desc: '',
      args: [],
    );
  }

  /// `Street`
  String get street {
    return Intl.message(
      'Street',
      name: 'street',
      desc: '',
      args: [],
    );
  }

  /// `Building Number`
  String get building_number {
    return Intl.message(
      'Building Number',
      name: 'building_number',
      desc: '',
      args: [],
    );
  }

  /// `Secondary Number`
  String get secondary_number {
    return Intl.message(
      'Secondary Number',
      name: 'secondary_number',
      desc: '',
      args: [],
    );
  }

  /// `Apartment  Number`
  String get apartment_number {
    return Intl.message(
      'Apartment  Number',
      name: 'apartment_number',
      desc: '',
      args: [],
    );
  }

  /// `A short address in format “ AAAA0000”`
  String get short_address_validation {
    return Intl.message(
      'A short address in format “ AAAA0000”',
      name: 'short_address_validation',
      desc: '',
      args: [],
    );
  }

  /// `A postal code contains 5 digits`
  String get postal_code_validation {
    return Intl.message(
      'A postal code contains 5 digits',
      name: 'postal_code_validation',
      desc: '',
      args: [],
    );
  }

  /// `Upload image for location`
  String get upload_image_for_location {
    return Intl.message(
      'Upload image for location',
      name: 'upload_image_for_location',
      desc: '',
      args: [],
    );
  }

  /// `Home address`
  String get home_address {
    return Intl.message(
      'Home address',
      name: 'home_address',
      desc: '',
      args: [],
    );
  }

  /// `Try again`
  String get try_again {
    return Intl.message(
      'Try again',
      name: 'try_again',
      desc: '',
      args: [],
    );
  }

  /// `Additional Note`
  String get additional_note {
    return Intl.message(
      'Additional Note',
      name: 'additional_note',
      desc: '',
      args: [],
    );
  }

  /// `Any Instruction or Note`
  String get any_instruction_or_note {
    return Intl.message(
      'Any Instruction or Note',
      name: 'any_instruction_or_note',
      desc: '',
      args: [],
    );
  }

  /// `Completed`
  String get complete {
    return Intl.message(
      'Completed',
      name: 'complete',
      desc: '',
      args: [],
    );
  }

  /// `Click to upload`
  String get click_to_upload {
    return Intl.message(
      'Click to upload',
      name: 'click_to_upload',
      desc: '',
      args: [],
    );
  }

  /// `image for your location or home`
  String get image_for_your_location_or_home {
    return Intl.message(
      'image for your location or home',
      name: 'image_for_your_location_or_home',
      desc: '',
      args: [],
    );
  }

  /// `Please check your email to activate your account.`
  String get activate_your_account_msg {
    return Intl.message(
      'Please check your email to activate your account.',
      name: 'activate_your_account_msg',
      desc: '',
      args: [],
    );
  }

  /// `Have an account?`
  String get have_an_account {
    return Intl.message(
      'Have an account?',
      name: 'have_an_account',
      desc: '',
      args: [],
    );
  }

  /// `Invalid User Name or Password`
  String get invalid_user_password {
    return Intl.message(
      'Invalid User Name or Password',
      name: 'invalid_user_password',
      desc: '',
      args: [],
    );
  }

  /// `Completed Successful`
  String get completed_successful {
    return Intl.message(
      'Completed Successful',
      name: 'completed_successful',
      desc: '',
      args: [],
    );
  }

  /// `A building number contains 4 digits`
  String get building_number_valid {
    return Intl.message(
      'A building number contains 4 digits',
      name: 'building_number_valid',
      desc: '',
      args: [],
    );
  }

  /// `A secondary  number contains 4 digits`
  String get secondary_number_valid {
    return Intl.message(
      'A secondary  number contains 4 digits',
      name: 'secondary_number_valid',
      desc: '',
      args: [],
    );
  }

  /// `or pending for activation from he Admin`
  String get pending_from_admin {
    return Intl.message(
      'or pending for activation from he Admin',
      name: 'pending_from_admin',
      desc: '',
      args: [],
    );
  }

  /// `Orders`
  String get orders {
    return Intl.message(
      'Orders',
      name: 'orders',
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

  /// `Orders list is empty`
  String get order_list_is_empty {
    return Intl.message(
      'Orders list is empty',
      name: 'order_list_is_empty',
      desc: '',
      args: [],
    );
  }

  /// `No orders available`
  String get no_orders_available {
    return Intl.message(
      'No orders available',
      name: 'no_orders_available',
      desc: '',
      args: [],
    );
  }

  /// `Order No:`
  String get order_no {
    return Intl.message(
      'Order No:',
      name: 'order_no',
      desc: '',
      args: [],
    );
  }

  /// `Add Order`
  String get add_order {
    return Intl.message(
      'Add Order',
      name: 'add_order',
      desc: '',
      args: [],
    );
  }

  /// `Enter beneficial details`
  String get enter_beneficial_details {
    return Intl.message(
      'Enter beneficial details',
      name: 'enter_beneficial_details',
      desc: '',
      args: [],
    );
  }

  /// `Submit Order`
  String get submit_order {
    return Intl.message(
      'Submit Order',
      name: 'submit_order',
      desc: '',
      args: [],
    );
  }

  /// `The short address has been successfully verified`
  String get the_short_address_has_been_successfully_verified {
    return Intl.message(
      'The short address has been successfully verified',
      name: 'the_short_address_has_been_successfully_verified',
      desc: '',
      args: [],
    );
  }

  /// `Out of Device`
  String get out_of_device {
    return Intl.message(
      'Out of Device',
      name: 'out_of_device',
      desc: '',
      args: [],
    );
  }

  /// `Chat with {name}`
  String send_message(Object name) {
    return Intl.message(
      'Chat with $name',
      name: 'send_message',
      desc: '',
      args: [name],
    );
  }

  /// `Confirm Delivery`
  String get confirm_delivery {
    return Intl.message(
      'Confirm Delivery',
      name: 'confirm_delivery',
      desc: '',
      args: [],
    );
  }

  /// `Cancel order`
  String get cancel_order {
    return Intl.message(
      'Cancel order',
      name: 'cancel_order',
      desc: '',
      args: [],
    );
  }

  /// `Canceling will blocks delivery to the same address for 12 hours.`
  String get cancel_order_msg {
    return Intl.message(
      'Canceling will blocks delivery to the same address for 12 hours.',
      name: 'cancel_order_msg',
      desc: '',
      args: [],
    );
  }

  /// `Continue Delivery`
  String get continue_delivery {
    return Intl.message(
      'Continue Delivery',
      name: 'continue_delivery',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Cancellation`
  String get confirm_cancellation {
    return Intl.message(
      'Confirm Cancellation',
      name: 'confirm_cancellation',
      desc: '',
      args: [],
    );
  }

  /// `Canceled Successful`
  String get cancelled_successful {
    return Intl.message(
      'Canceled Successful',
      name: 'cancelled_successful',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Your Password?`
  String get forgot_your_password {
    return Intl.message(
      'Forgot Your Password?',
      name: 'forgot_your_password',
      desc: '',
      args: [],
    );
  }

  /// `Enter the email address associated with your account, and we'll send you a link to reset your password.`
  String get enter_email_to_reset_password {
    return Intl.message(
      'Enter the email address associated with your account, and we\'ll send you a link to reset your password.',
      name: 'enter_email_to_reset_password',
      desc: '',
      args: [],
    );
  }

  /// `Send OTP`
  String get send_otp {
    return Intl.message(
      'Send OTP',
      name: 'send_otp',
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

  /// `We’ve sent a verification link to your email address. Please click the link or enter OTP code to confirm your email.`
  String get otp_verification_msg {
    return Intl.message(
      'We’ve sent a verification link to your email address. Please click the link or enter OTP code to confirm your email.',
      name: 'otp_verification_msg',
      desc: '',
      args: [],
    );
  }

  /// `Verify`
  String get verify {
    return Intl.message(
      'Verify',
      name: 'verify',
      desc: '',
      args: [],
    );
  }

  /// `Resend OTP`
  String get resend_otp {
    return Intl.message(
      'Resend OTP',
      name: 'resend_otp',
      desc: '',
      args: [],
    );
  }

  /// `Reset Password`
  String get reset_password {
    return Intl.message(
      'Reset Password',
      name: 'reset_password',
      desc: '',
      args: [],
    );
  }

  /// `Enter your new password twice below to reset a new password`
  String get reset_password_msg {
    return Intl.message(
      'Enter your new password twice below to reset a new password',
      name: 'reset_password_msg',
      desc: '',
      args: [],
    );
  }

  /// `Enter new password`
  String get enter_new_password {
    return Intl.message(
      'Enter new password',
      name: 'enter_new_password',
      desc: '',
      args: [],
    );
  }

  /// `Re-enter new password`
  String get reenter_new_password {
    return Intl.message(
      'Re-enter new password',
      name: 'reenter_new_password',
      desc: '',
      args: [],
    );
  }

  /// `Password not match`
  String get password_not_match {
    return Intl.message(
      'Password not match',
      name: 'password_not_match',
      desc: '',
      args: [],
    );
  }

  /// `Success reset password`
  String get success_reset_password {
    return Intl.message(
      'Success reset password',
      name: 'success_reset_password',
      desc: '',
      args: [],
    );
  }

  /// `Not Connected`
  String get not_connected {
    return Intl.message(
      'Not Connected',
      name: 'not_connected',
      desc: '',
      args: [],
    );
  }

  /// `Inactive`
  String get inactive {
    return Intl.message(
      'Inactive',
      name: 'inactive',
      desc: '',
      args: [],
    );
  }

  /// `The subscription is pending until the device is installed, you will be contacted soon.`
  String get inactive_msg {
    return Intl.message(
      'The subscription is pending until the device is installed, you will be contacted soon.',
      name: 'inactive_msg',
      desc: '',
      args: [],
    );
  }

  /// `Current Orders`
  String get current_orders {
    return Intl.message(
      'Current Orders',
      name: 'current_orders',
      desc: '',
      args: [],
    );
  }

  /// `All orders assigned to you.`
  String get all_orders_assigned_to_you {
    return Intl.message(
      'All orders assigned to you.',
      name: 'all_orders_assigned_to_you',
      desc: '',
      args: [],
    );
  }

  /// `Completed`
  String get completed {
    return Intl.message(
      'Completed',
      name: 'completed',
      desc: '',
      args: [],
    );
  }

  /// `Canceled`
  String get cancelled {
    return Intl.message(
      'Canceled',
      name: 'cancelled',
      desc: '',
      args: [],
    );
  }

  /// `All the orders you need to deliver`
  String get all_the_orders_you_need_to_deliver {
    return Intl.message(
      'All the orders you need to deliver',
      name: 'all_the_orders_you_need_to_deliver',
      desc: '',
      args: [],
    );
  }

  /// `New OTP sended to your email`
  String get new_otp_sended_to_your_email {
    return Intl.message(
      'New OTP sended to your email',
      name: 'new_otp_sended_to_your_email',
      desc: '',
      args: [],
    );
  }

  /// `Active`
  String get active {
    return Intl.message(
      'Active',
      name: 'active',
      desc: '',
      args: [],
    );
  }

  /// `Order Details`
  String get order_details {
    return Intl.message(
      'Order Details',
      name: 'order_details',
      desc: '',
      args: [],
    );
  }

  /// `Delivery Details`
  String get delivery_details {
    return Intl.message(
      'Delivery Details',
      name: 'delivery_details',
      desc: '',
      args: [],
    );
  }

  /// `Customer Details`
  String get customer_details {
    return Intl.message(
      'Customer Details',
      name: 'customer_details',
      desc: '',
      args: [],
    );
  }

  /// `Submit a report`
  String get submit_report {
    return Intl.message(
      'Submit a report',
      name: 'submit_report',
      desc: '',
      args: [],
    );
  }

  /// `Submit Rating`
  String get submit_rating {
    return Intl.message(
      'Submit Rating',
      name: 'submit_rating',
      desc: '',
      args: [],
    );
  }

  /// `Rate Service Provide`
  String get rate_service_provider {
    return Intl.message(
      'Rate Service Provide',
      name: 'rate_service_provider',
      desc: '',
      args: [],
    );
  }

  /// `We value your feedback! Please rate your experience with {text}.`
  String rate_provider_msg(Object text) {
    return Intl.message(
      'We value your feedback! Please rate your experience with $text.',
      name: 'rate_provider_msg',
      desc: '',
      args: [text],
    );
  }

  /// `Tracking Device`
  String get tracking_device {
    return Intl.message(
      'Tracking Device',
      name: 'tracking_device',
      desc: '',
      args: [],
    );
  }

  /// `Invalid OTP`
  String get invalid_otp {
    return Intl.message(
      'Invalid OTP',
      name: 'invalid_otp',
      desc: '',
      args: [],
    );
  }

  /// `Rate`
  String get rate {
    return Intl.message(
      'Rate',
      name: 'rate',
      desc: '',
      args: [],
    );
  }

  /// `Arrive in`
  String get arrive_in {
    return Intl.message(
      'Arrive in',
      name: 'arrive_in',
      desc: '',
      args: [],
    );
  }

  /// `Account Info`
  String get account_info {
    return Intl.message(
      'Account Info',
      name: 'account_info',
      desc: '',
      args: [],
    );
  }

  /// `Address Info`
  String get address_info {
    return Intl.message(
      'Address Info',
      name: 'address_info',
      desc: '',
      args: [],
    );
  }

  /// `Manage Beneficials`
  String get manage_beneficials {
    return Intl.message(
      'Manage Beneficials',
      name: 'manage_beneficials',
      desc: '',
      args: [],
    );
  }

  /// `Subscription`
  String get subscription {
    return Intl.message(
      'Subscription',
      name: 'subscription',
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

  /// `Log out`
  String get logout {
    return Intl.message(
      'Log out',
      name: 'logout',
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

  /// `Enter your new password twice below to change a new password`
  String get change_password_msg {
    return Intl.message(
      'Enter your new password twice below to change a new password',
      name: 'change_password_msg',
      desc: '',
      args: [],
    );
  }

  /// `Passwords don’t match. Please make sure both passwords are the same.`
  String get password_not_match_msg {
    return Intl.message(
      'Passwords don’t match. Please make sure both passwords are the same.',
      name: 'password_not_match_msg',
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

  /// `Change password successfully`
  String get change_password_successfully {
    return Intl.message(
      'Change password successfully',
      name: 'change_password_successfully',
      desc: '',
      args: [],
    );
  }

  /// `Change Language`
  String get change_language {
    return Intl.message(
      'Change Language',
      name: 'change_language',
      desc: '',
      args: [],
    );
  }

  /// `You will loss your login data and will need to re-enter it when you return. `
  String get logout_warning {
    return Intl.message(
      'You will loss your login data and will need to re-enter it when you return. ',
      name: 'logout_warning',
      desc: '',
      args: [],
    );
  }

  /// `Location Image`
  String get location_image {
    return Intl.message(
      'Location Image',
      name: 'location_image',
      desc: '',
      args: [],
    );
  }

  /// `No notifications available`
  String get no_notifications_available {
    return Intl.message(
      'No notifications available',
      name: 'no_notifications_available',
      desc: '',
      args: [],
    );
  }

  /// `Notifications list is empty`
  String get notifications_list_is_empty {
    return Intl.message(
      'Notifications list is empty',
      name: 'notifications_list_is_empty',
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

  /// `Mark all as read`
  String get mark_all_as_read {
    return Intl.message(
      'Mark all as read',
      name: 'mark_all_as_read',
      desc: '',
      args: [],
    );
  }

  /// `Chat with`
  String get chat_with {
    return Intl.message(
      'Chat with',
      name: 'chat_with',
      desc: '',
      args: [],
    );
  }

  /// `Client`
  String get client {
    return Intl.message(
      'Client',
      name: 'client',
      desc: '',
      args: [],
    );
  }

  /// `Delivery`
  String get delivery {
    return Intl.message(
      'Delivery',
      name: 'delivery',
      desc: '',
      args: [],
    );
  }

  /// `Authenticate to access the app`
  String get authenticate_access_app {
    return Intl.message(
      'Authenticate to access the app',
      name: 'authenticate_access_app',
      desc: '',
      args: [],
    );
  }

  /// `Biometric Authentication`
  String get biometric_authentication {
    return Intl.message(
      'Biometric Authentication',
      name: 'biometric_authentication',
      desc: '',
      args: [],
    );
  }

  /// `Use you fingerprint or face for faster and easier login.`
  String get use_fingerprint {
    return Intl.message(
      'Use you fingerprint or face for faster and easier login.',
      name: 'use_fingerprint',
      desc: '',
      args: [],
    );
  }

  /// `Skip`
  String get skip {
    return Intl.message(
      'Skip',
      name: 'skip',
      desc: '',
      args: [],
    );
  }

  /// `Enable biometric login`
  String get enable_biometric_login {
    return Intl.message(
      'Enable biometric login',
      name: 'enable_biometric_login',
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
