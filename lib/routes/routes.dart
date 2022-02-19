import 'package:flutter/material.dart';
import 'package:mobilecar/database.dart';
import 'package:mobilecar/pages/car_model.dart';
import 'package:mobilecar/pages/filter/booked_seccesfully.dart';
import 'package:mobilecar/pages/filter/confirm_booking.dart';
import 'package:mobilecar/pages/filter/filter_profile_page.dart';
import 'package:mobilecar/pages/filter/first_filter_page.dart';
import 'package:mobilecar/pages/filter/second_page_filter.dart';
import 'package:mobilecar/pages/home_page.dart';
import 'package:mobilecar/pages/page_bir.dart';
import 'package:mobilecar/pages/profile/chatting.dart';
import 'package:mobilecar/pages/profile/code_keladi.dart';
import 'package:mobilecar/pages/profile/my_card.dart';
import 'package:mobilecar/pages/profile/payment_methods.dart';
import 'package:mobilecar/sign_up/sign_up.dart';
import 'package:mobilecar/sign_up/verification_code.dart';
import 'package:mobilecar/sign_up/welcome_back.dart';

class RouterGenerator {
  static generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (context) => SignIn());
      case "/signup":
        return MaterialPageRoute(builder: (context) => Sign_up());
      case "/welcome_back":
        return MaterialPageRoute(builder: (context) => Welcome_Back());
      case "/homepage":
        return MaterialPageRoute(builder: (context) => Home_Page());
      case "/verification_code":
        return MaterialPageRoute(builder: (context) => Verification_Code());
      case "/filter_first_page":
        return MaterialPageRoute(builder: (context) => First_Filter_Page());
      case "/second_page_filter":
        return MaterialPageRoute(
            builder: (context) => SecondPageFilter(
                  data: args,
                ));
      case "/filter_profile_page":
        return MaterialPageRoute(
            builder: (context) => FilterProfilePage(malumot: args));
      case "/confirm_booking":
        return MaterialPageRoute(
            builder: (context) => ConfirmBooking(
                  data: args,
                ));
      case "/booked_succesfully":
        return MaterialPageRoute(builder: (context) => BookedSuccesfully());
      case "/carbrend":
        return MaterialPageRoute(
            builder: (context) => CarBrends(
                  data: args,
                ));
      case "/message":
        return MaterialPageRoute(builder: (context) => Messaging());
      case "/paymnet_methods":
        return MaterialPageRoute(builder: (context) => PaymentMethods());
      case "/code_keladi":
        return MaterialPageRoute(builder: (context) => CodeKeladi());
      case "/my_card":
        return MaterialPageRoute(builder: (context) => MyCardPage());
    }
  }
}
