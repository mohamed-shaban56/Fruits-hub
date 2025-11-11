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
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
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
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Welcome to`
  String get onBordig1Title {
    return Intl.message(
      'Welcome to',
      name: 'onBordig1Title',
      desc: '',
      args: [],
    );
  }

  /// `Discover a unique shopping experience with FruitHUB. Explore our wide collection of premium fresh fruits and enjoy the best deals with high quality.`
  String get onBordig1SubTitle {
    return Intl.message(
      'Discover a unique shopping experience with FruitHUB. Explore our wide collection of premium fresh fruits and enjoy the best deals with high quality.',
      name: 'onBordig1SubTitle',
      desc: '',
      args: [],
    );
  }

  /// `Search and Shop`
  String get onBordig2Title {
    return Intl.message(
      'Search and Shop',
      name: 'onBordig2Title',
      desc: '',
      args: [],
    );
  }

  /// `We offer you the finest carefully selected fruits. Check details, photos, and reviews to make sure you choose the perfect fruit.`
  String get onBordig2SubTitle {
    return Intl.message(
      'We offer you the finest carefully selected fruits. Check details, photos, and reviews to make sure you choose the perfect fruit.',
      name: 'onBordig2SubTitle',
      desc: '',
      args: [],
    );
  }

  /// `Price`
  String get order_price {
    return Intl.message('Price', name: 'order_price', desc: '', args: []);
  }

  /// `Skip`
  String get skipKeyword {
    return Intl.message('Skip', name: 'skipKeyword', desc: '', args: []);
  }

  /// `Start Now`
  String get startNowKeyword {
    return Intl.message(
      'Start Now',
      name: 'startNowKeyword',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get loginTitle {
    return Intl.message('Login', name: 'loginTitle', desc: '', args: []);
  }

  /// `Day`
  String get Days {
    return Intl.message('Day', name: 'Days', desc: '', args: []);
  }

  /// `Reviews`
  String get product_reviews {
    return Intl.message('Reviews', name: 'product_reviews', desc: '', args: []);
  }

  /// `100 g`
  String get product_weight {
    return Intl.message('100 g', name: 'product_weight', desc: '', args: []);
  }

  /// `Add to Cart`
  String get product_add_to_cart {
    return Intl.message(
      'Add to Cart',
      name: 'product_add_to_cart',
      desc: '',
      args: [],
    );
  }

  /// `Organic`
  String get product_category_organic {
    return Intl.message(
      'Organic',
      name: 'product_category_organic',
      desc: '',
      args: [],
    );
  }

  /// `Expiry`
  String get product_expiry {
    return Intl.message('Expiry', name: 'product_expiry', desc: '', args: []);
  }

  /// `Calory`
  String get Calory {
    return Intl.message('Calory', name: 'Calory', desc: '', args: []);
  }

  /// `Review`
  String get product_review_label {
    return Intl.message(
      'Review',
      name: 'product_review_label',
      desc: '',
      args: [],
    );
  }

  /// `New Account`
  String get SingUpTitle {
    return Intl.message('New Account', name: 'SingUpTitle', desc: '', args: []);
  }

  /// `Email`
  String get email {
    return Intl.message('Email', name: 'email', desc: '', args: []);
  }

  /// `Password`
  String get password {
    return Intl.message('Password', name: 'password', desc: '', args: []);
  }

  /// `Theme`
  String get Theme {
    return Intl.message('Theme', name: 'Theme', desc: '', args: []);
  }

  /// `Forgot Password?`
  String get forgotPassword {
    return Intl.message(
      'Forgot Password?',
      name: 'forgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get loginButton {
    return Intl.message('Login', name: 'loginButton', desc: '', args: []);
  }

  /// `Pay with`
  String get pay_with {
    return Intl.message('Pay with', name: 'pay_with', desc: '', args: []);
  }

  /// `Select Language`
  String get select_language {
    return Intl.message(
      'Select Language',
      name: 'select_language',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get english {
    return Intl.message('English', name: 'english', desc: '', args: []);
  }

  /// `is required`
  String get required_filed {
    return Intl.message(
      'is required',
      name: 'required_filed',
      desc: '',
      args: [],
    );
  }

  /// `Don’t have an account?`
  String get noAccount {
    return Intl.message(
      'Don’t have an account?',
      name: 'noAccount',
      desc: '',
      args: [],
    );
  }

  /// `Create Account`
  String get createAccount {
    return Intl.message(
      'Create Account',
      name: 'createAccount',
      desc: '',
      args: [],
    );
  }

  /// `OR`
  String get or {
    return Intl.message('OR', name: 'or', desc: '', args: []);
  }

  /// `Continue with Google`
  String get loginWithGoogle {
    return Intl.message(
      'Continue with Google',
      name: 'loginWithGoogle',
      desc: '',
      args: [],
    );
  }

  /// `Continue with GitHub`
  String get loginWithApple {
    return Intl.message(
      'Continue with GitHub',
      name: 'loginWithApple',
      desc: '',
      args: [],
    );
  }

  /// `Continue with Facebook`
  String get loginWithFacebook {
    return Intl.message(
      'Continue with Facebook',
      name: 'loginWithFacebook',
      desc: '',
      args: [],
    );
  }

  /// `Full Name`
  String get full_name {
    return Intl.message('Full Name', name: 'full_name', desc: '', args: []);
  }

  /// `By creating an account, you agree to `
  String get terms {
    return Intl.message(
      'By creating an account, you agree to ',
      name: 'terms',
      desc: '',
      args: [],
    );
  }

  /// `our Terms and Conditions`
  String get condition {
    return Intl.message(
      'our Terms and Conditions',
      name: 'condition',
      desc: '',
      args: [],
    );
  }

  /// `Create New Account`
  String get create_account {
    return Intl.message(
      'Create New Account',
      name: 'create_account',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account?`
  String get already_have_account {
    return Intl.message(
      'Already have an account?',
      name: 'already_have_account',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message('Login', name: 'login', desc: '', args: []);
  }

  /// `This filed is required`
  String get formValidate {
    return Intl.message(
      'This filed is required',
      name: 'formValidate',
      desc: '',
      args: [],
    );
  }

  /// `The password provided is too weak.`
  String get weakPassword {
    return Intl.message(
      'The password provided is too weak.',
      name: 'weakPassword',
      desc: '',
      args: [],
    );
  }

  /// `The account already exists for that email.`
  String get emailAlreadyInUse {
    return Intl.message(
      'The account already exists for that email.',
      name: 'emailAlreadyInUse',
      desc: '',
      args: [],
    );
  }

  /// `Unexpected error, please try again later`
  String get unexpectedError {
    return Intl.message(
      'Unexpected error, please try again later',
      name: 'unexpectedError',
      desc: '',
      args: [],
    );
  }

  /// `Email is required`
  String get emailRequired {
    return Intl.message(
      'Email is required',
      name: 'emailRequired',
      desc: '',
      args: [],
    );
  }

  /// `Password is required`
  String get passwordRequired {
    return Intl.message(
      'Password is required',
      name: 'passwordRequired',
      desc: '',
      args: [],
    );
  }

  /// `Name is required`
  String get nameRequired {
    return Intl.message(
      'Name is required',
      name: 'nameRequired',
      desc: '',
      args: [],
    );
  }

  /// `You must agree to the Terms & Conditions`
  String get termsRequired {
    return Intl.message(
      'You must agree to the Terms & Conditions',
      name: 'termsRequired',
      desc: '',
      args: [],
    );
  }

  /// `Please check your internet connection`
  String get noInternet {
    return Intl.message(
      'Please check your internet connection',
      name: 'noInternet',
      desc: '',
      args: [],
    );
  }

  /// `Invalid email or password.`
  String get invalidCredentials {
    return Intl.message(
      'Invalid email or password.',
      name: 'invalidCredentials',
      desc: '',
      args: [],
    );
  }

  /// `Best Selling`
  String get best_selling {
    return Intl.message(
      'Best Selling',
      name: 'best_selling',
      desc: '',
      args: [],
    );
  }

  /// `Strawberry`
  String get strawberry {
    return Intl.message('Strawberry', name: 'strawberry', desc: '', args: []);
  }

  /// `Watermelon`
  String get watermelon {
    return Intl.message('Watermelon', name: 'watermelon', desc: '', args: []);
  }

  /// `Search for.......`
  String get search_placeholder {
    return Intl.message(
      'Search for.......',
      name: 'search_placeholder',
      desc: '',
      args: [],
    );
  }

  /// `Good Morning!..`
  String get good_morning {
    return Intl.message(
      'Good Morning!..',
      name: 'good_morning',
      desc: '',
      args: [],
    );
  }

  /// `Eid Offers`
  String get eid_offer {
    return Intl.message('Eid Offers', name: 'eid_offer', desc: '', args: []);
  }

  /// `25% Off`
  String get discount {
    return Intl.message('25% Off', name: 'discount', desc: '', args: []);
  }

  /// `Shop Now`
  String get shop_now {
    return Intl.message('Shop Now', name: 'shop_now', desc: '', args: []);
  }

  /// `more`
  String get more {
    return Intl.message('more', name: 'more', desc: '', args: []);
  }

  /// `EGP`
  String get price {
    return Intl.message('EGP', name: 'price', desc: '', args: []);
  }

  /// `killo`
  String get countaty {
    return Intl.message('killo', name: 'countaty', desc: '', args: []);
  }

  /// `Shipping`
  String get shipping {
    return Intl.message('Shipping', name: 'shipping', desc: '', args: []);
  }

  /// `Home`
  String get home {
    return Intl.message('Home', name: 'home', desc: '', args: []);
  }

  /// `Products`
  String get products {
    return Intl.message('Products', name: 'products', desc: '', args: []);
  }

  /// `Shopping Cart`
  String get cart {
    return Intl.message('Shopping Cart', name: 'cart', desc: '', args: []);
  }

  /// `My Account`
  String get profile {
    return Intl.message('My Account', name: 'profile', desc: '', args: []);
  }

  /// `Product Name`
  String get product_name {
    return Intl.message(
      'Product Name',
      name: 'product_name',
      desc: '',
      args: [],
    );
  }

  /// `Product Category`
  String get product_category {
    return Intl.message(
      'Product Category',
      name: 'product_category',
      desc: '',
      args: [],
    );
  }

  /// `product`
  String get product {
    return Intl.message('product', name: 'product', desc: '', args: []);
  }

  /// `Results`
  String get results {
    return Intl.message('Results', name: 'results', desc: '', args: []);
  }

  /// `Cart`
  String get cartappbar {
    return Intl.message('Cart', name: 'cartappbar', desc: '', args: []);
  }

  /// `You have `
  String get shopping_cart_summary {
    return Intl.message(
      'You have ',
      name: 'shopping_cart_summary',
      desc: '',
      args: [],
    );
  }

  /// ` products in your cart`
  String get shoppping_cart_summary2 {
    return Intl.message(
      ' products in your cart',
      name: 'shoppping_cart_summary2',
      desc: '',
      args: [],
    );
  }

  /// `Product added to cart successfully`
  String get productAddedToCart {
    return Intl.message(
      'Product added to cart successfully',
      name: 'productAddedToCart',
      desc: '',
      args: [],
    );
  }

  /// `Shipping`
  String get checkout_shipping {
    return Intl.message(
      'Shipping',
      name: 'checkout_shipping',
      desc: '',
      args: [],
    );
  }

  /// `Address`
  String get checkout_address {
    return Intl.message(
      'Address',
      name: 'checkout_address',
      desc: '',
      args: [],
    );
  }

  /// `Review`
  String get checkout_review {
    return Intl.message('Review', name: 'checkout_review', desc: '', args: []);
  }

  /// `Phone Number`
  String get check_out_phone_number {
    return Intl.message(
      'Phone Number',
      name: 'check_out_phone_number',
      desc: '',
      args: [],
    );
  }

  /// `Payment`
  String get checkout_payment {
    return Intl.message(
      'Payment',
      name: 'checkout_payment',
      desc: '',
      args: [],
    );
  }

  /// `40 EGP`
  String get checkout_amount {
    return Intl.message('40 EGP', name: 'checkout_amount', desc: '', args: []);
  }

  /// `Cash on Delivery`
  String get checkout_cash_on_delivery {
    return Intl.message(
      'Cash on Delivery',
      name: 'checkout_cash_on_delivery',
      desc: '',
      args: [],
    );
  }

  /// `Full Name`
  String get checkout_full_name {
    return Intl.message(
      'Full Name',
      name: 'checkout_full_name',
      desc: '',
      args: [],
    );
  }

  /// `Delivery From Location`
  String get checkout_delivery_from {
    return Intl.message(
      'Delivery From Location',
      name: 'checkout_delivery_from',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get checkout_email {
    return Intl.message('Email', name: 'checkout_email', desc: '', args: []);
  }

  /// `Free`
  String get checkout_free {
    return Intl.message('Free', name: 'checkout_free', desc: '', args: []);
  }

  /// `Pay online`
  String get checkout_buy_now_pay_later {
    return Intl.message(
      'Pay online',
      name: 'checkout_buy_now_pay_later',
      desc: '',
      args: [],
    );
  }

  /// `Please select a payment method`
  String get checkout_select_payment_method {
    return Intl.message(
      'Please select a payment method',
      name: 'checkout_select_payment_method',
      desc: '',
      args: [],
    );
  }

  /// `City`
  String get checkout_city {
    return Intl.message('City', name: 'checkout_city', desc: '', args: []);
  }

  /// `Next`
  String get checkout_next {
    return Intl.message('Next', name: 'checkout_next', desc: '', args: []);
  }

  /// `Floor Number, Apartment Number ..`
  String get checkout_floor_apartment {
    return Intl.message(
      'Floor Number, Apartment Number ..',
      name: 'checkout_floor_apartment',
      desc: '',
      args: [],
    );
  }

  /// `Save Address`
  String get checkout_save_address {
    return Intl.message(
      'Save Address',
      name: 'checkout_save_address',
      desc: '',
      args: [],
    );
  }

  /// `Choose the suitable payment method:`
  String get checkout_choose_payment_method_title {
    return Intl.message(
      'Choose the suitable payment method:',
      name: 'checkout_choose_payment_method_title',
      desc: '',
      args: [],
    );
  }

  /// `Please choose the payment method that suits you.`
  String get checkout_choose_payment_method_subtitle {
    return Intl.message(
      'Please choose the payment method that suits you.',
      name: 'checkout_choose_payment_method_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Confirm & Continue`
  String get confirm_and_continue {
    return Intl.message(
      'Confirm & Continue',
      name: 'confirm_and_continue',
      desc: '',
      args: [],
    );
  }

  /// `Review`
  String get review {
    return Intl.message('Review', name: 'review', desc: '', args: []);
  }

  /// `Payment`
  String get payment {
    return Intl.message('Payment', name: 'payment', desc: '', args: []);
  }

  /// `Address`
  String get address {
    return Intl.message('Address', name: 'address', desc: '', args: []);
  }

  /// `Order Summary`
  String get order_summary {
    return Intl.message(
      'Order Summary',
      name: 'order_summary',
      desc: '',
      args: [],
    );
  }

  /// `Subtotal`
  String get subtotal {
    return Intl.message('Subtotal', name: 'subtotal', desc: '', args: []);
  }

  /// `Delivery`
  String get delivery {
    return Intl.message('Delivery', name: 'delivery', desc: '', args: []);
  }

  /// `Total`
  String get total {
    return Intl.message('Total', name: 'total', desc: '', args: []);
  }

  /// `Please confirm your order`
  String get confirm_prompt {
    return Intl.message(
      'Please confirm your order',
      name: 'confirm_prompt',
      desc: '',
      args: [],
    );
  }

  /// `Orders`
  String get orders {
    return Intl.message('Orders', name: 'orders', desc: '', args: []);
  }

  /// `Edit`
  String get edit {
    return Intl.message('Edit', name: 'edit', desc: '', args: []);
  }

  /// `Payment Method`
  String get payment_method {
    return Intl.message(
      'Payment Method',
      name: 'payment_method',
      desc: '',
      args: [],
    );
  }

  /// `**** **** **** 6522`
  String get card_number {
    return Intl.message(
      '**** **** **** 6522',
      name: 'card_number',
      desc: '',
      args: [],
    );
  }

  /// `Delivery Address`
  String get delivery_address {
    return Intl.message(
      'Delivery Address',
      name: 'delivery_address',
      desc: '',
      args: [],
    );
  }

  /// `123 Nile Street, Building 123`
  String get sample_address {
    return Intl.message(
      '123 Nile Street, Building 123',
      name: 'sample_address',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Order`
  String get confirm_order {
    return Intl.message(
      'Confirm Order',
      name: 'confirm_order',
      desc: '',
      args: [],
    );
  }

  /// `You cannot proceed to the order page`
  String get cannot_go_to_order_page {
    return Intl.message(
      'You cannot proceed to the order page',
      name: 'cannot_go_to_order_page',
      desc: '',
      args: [],
    );
  }

  /// `Choose the payment method first`
  String get choose_payment_method_first {
    return Intl.message(
      'Choose the payment method first',
      name: 'choose_payment_method_first',
      desc: '',
      args: [],
    );
  }

  /// `Enter address info first`
  String get addressInfo {
    return Intl.message(
      'Enter address info first',
      name: 'addressInfo',
      desc: '',
      args: [],
    );
  }

  /// `Address Update`
  String get address_update {
    return Intl.message(
      'Address Update',
      name: 'address_update',
      desc: '',
      args: [],
    );
  }

  /// `dashboard`
  String get dashboard {
    return Intl.message('dashboard', name: 'dashboard', desc: '', args: []);
  }

  /// `Total Price`
  String get totalPrice {
    return Intl.message('Total Price', name: 'totalPrice', desc: '', args: []);
  }

  /// `User Name`
  String get userName {
    return Intl.message('User Name', name: 'userName', desc: '', args: []);
  }

  /// `Shipping Address`
  String get shipping_address {
    return Intl.message(
      'Shipping Address',
      name: 'shipping_address',
      desc: '',
      args: [],
    );
  }

  /// `Payment Method`
  String get Payment_method {
    return Intl.message(
      'Payment Method',
      name: 'Payment_method',
      desc: '',
      args: [],
    );
  }

  /// `Product`
  String get productType {
    return Intl.message('Product', name: 'productType', desc: '', args: []);
  }

  /// `Quantity`
  String get quantity {
    return Intl.message('Quantity', name: 'quantity', desc: '', args: []);
  }

  /// `Payment completed successfully`
  String get payment_success {
    return Intl.message(
      'Payment completed successfully',
      name: 'payment_success',
      desc: '',
      args: [],
    );
  }

  /// `Track Order`
  String get track_order {
    return Intl.message('Track Order', name: 'track_order', desc: '', args: []);
  }

  /// `Add New Address`
  String get add_new_address {
    return Intl.message(
      'Add New Address',
      name: 'add_new_address',
      desc: '',
      args: [],
    );
  }

  /// `account`
  String get account {
    return Intl.message('account', name: 'account', desc: '', args: []);
  }

  /// `General`
  String get general {
    return Intl.message('General', name: 'general', desc: '', args: []);
  }

  /// `My Orders`
  String get my_orders {
    return Intl.message('My Orders', name: 'my_orders', desc: '', args: []);
  }

  /// `Payments`
  String get payments {
    return Intl.message('Payments', name: 'payments', desc: '', args: []);
  }

  /// `Favorites`
  String get favorites {
    return Intl.message('Favorites', name: 'favorites', desc: '', args: []);
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

  /// `Arabic`
  String get arabic {
    return Intl.message('Arabic', name: 'arabic', desc: '', args: []);
  }

  /// `Language`
  String get language {
    return Intl.message('Language', name: 'language', desc: '', args: []);
  }

  /// `Theme / Mode`
  String get theme_mode {
    return Intl.message('Theme / Mode', name: 'theme_mode', desc: '', args: []);
  }

  /// `Help`
  String get help {
    return Intl.message('Help', name: 'help', desc: '', args: []);
  }

  /// `Confirm`
  String get confirm {
    return Intl.message('Confirm', name: 'confirm', desc: '', args: []);
  }

  /// `Cancel`
  String get cancel {
    return Intl.message('Cancel', name: 'cancel', desc: '', args: []);
  }

  /// `About Us`
  String get about_us {
    return Intl.message('About Us', name: 'about_us', desc: '', args: []);
  }

  /// `Code`
  String get code {
    return Intl.message('Code', name: 'code', desc: '', args: []);
  }

  /// `Logout`
  String get logout {
    return Intl.message('Logout', name: 'logout', desc: '', args: []);
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

  /// `Confirm New Password`
  String get confirm_new_password {
    return Intl.message(
      'Confirm New Password',
      name: 'confirm_new_password',
      desc: '',
      args: [],
    );
  }

  /// `Save Changes`
  String get save_changes {
    return Intl.message(
      'Save Changes',
      name: 'save_changes',
      desc: '',
      args: [],
    );
  }

  /// `Your account information has been updated. Please verify your new email address to confirm the update, then log in using your new credentials.`
  String get account_updated_please_verify {
    return Intl.message(
      'Your account information has been updated. Please verify your new email address to confirm the update, then log in using your new credentials.',
      name: 'account_updated_please_verify',
      desc: '',
      args: [],
    );
  }

  /// `Personal Information`
  String get Personal_info {
    return Intl.message(
      'Personal Information',
      name: 'Personal_info',
      desc: '',
      args: [],
    );
  }

  /// `Personal Account`
  String get my_account_appbar {
    return Intl.message(
      'Personal Account',
      name: 'my_account_appbar',
      desc: '',
      args: [],
    );
  }

  /// `About Us FruitHUB is an app for shopping fresh fruits. We offer a wide range of high-quality fruits. We strive to provide an easy and fast shopping experience. We focus on offering special deals for users. Our services are designed to meet the needs of all customers.`
  String get about_us_section1 {
    return Intl.message(
      'About Us FruitHUB is an app for shopping fresh fruits. We offer a wide range of high-quality fruits. We strive to provide an easy and fast shopping experience. We focus on offering special deals for users. Our services are designed to meet the needs of all customers.',
      name: 'about_us_section1',
      desc: '',
      args: [],
    );
  }

  /// `We believe in the importance of fruit quality and freshness. We work with the best suppliers to ensure the finest products reach our users. Our goal is to provide a unique experience for all fruit lovers.`
  String get about_us_section2 {
    return Intl.message(
      'We believe in the importance of fruit quality and freshness. We work with the best suppliers to ensure the finest products reach our users. Our goal is to provide a unique experience for all fruit lovers.',
      name: 'about_us_section2',
      desc: '',
      args: [],
    );
  }

  /// `Our app is user-friendly and allows you to select your favorite products and follow new offers. We provide detailed information for each product with clear images to ensure the best choice.`
  String get about_us_section3 {
    return Intl.message(
      'Our app is user-friendly and allows you to select your favorite products and follow new offers. We provide detailed information for each product with clear images to ensure the best choice.',
      name: 'about_us_section3',
      desc: '',
      args: [],
    );
  }

  /// `We are committed to delivering orders quickly and accurately. Users can track their order from placement to delivery. We provide multiple payment options to make the process easier.`
  String get about_us_section4 {
    return Intl.message(
      'We are committed to delivering orders quickly and accurately. Users can track their order from placement to delivery. We provide multiple payment options to make the process easier.',
      name: 'about_us_section4',
      desc: '',
      args: [],
    );
  }

  /// `We always strive to improve our services based on user feedback. Customer support is available to answer any questions or issues you may encounter while shopping with us.`
  String get about_us_section5 {
    return Intl.message(
      'We always strive to improve our services based on user feedback. Customer support is available to answer any questions or issues you may encounter while shopping with us.',
      name: 'about_us_section5',
      desc: '',
      args: [],
    );
  }

  /// `We prioritize sustainability and reducing food waste. We work on improving storage and transport methods to maintain the freshness and quality of the fruits.`
  String get about_us_section6 {
    return Intl.message(
      'We prioritize sustainability and reducing food waste. We work on improving storage and transport methods to maintain the freshness and quality of the fruits.',
      name: 'about_us_section6',
      desc: '',
      args: [],
    );
  }

  /// `We always listen to customer feedback and continuously improve our app to ensure an enjoyable and easy shopping experience for all users.`
  String get about_us_section7 {
    return Intl.message(
      'We always listen to customer feedback and continuously improve our app to ensure an enjoyable and easy shopping experience for all users.',
      name: 'about_us_section7',
      desc: '',
      args: [],
    );
  }

  /// `We use the latest technologies to ensure a safe and smooth shopping experience. All user data is protected with strict security policies to maintain privacy.`
  String get about_us_section8 {
    return Intl.message(
      'We use the latest technologies to ensure a safe and smooth shopping experience. All user data is protected with strict security policies to maintain privacy.',
      name: 'about_us_section8',
      desc: '',
      args: [],
    );
  }

  /// `We provide 24/7 technical support to ensure customer satisfaction and resolve any issues quickly and efficiently.`
  String get about_us_section9 {
    return Intl.message(
      'We provide 24/7 technical support to ensure customer satisfaction and resolve any issues quickly and efficiently.',
      name: 'about_us_section9',
      desc: '',
      args: [],
    );
  }

  /// `Our goal is to become the leading online destination for fresh fruit shopping in the Arab world, and we are dedicated to achieving that.`
  String get about_us_section10 {
    return Intl.message(
      'Our goal is to become the leading online destination for fresh fruit shopping in the Arab world, and we are dedicated to achieving that.',
      name: 'about_us_section10',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
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
