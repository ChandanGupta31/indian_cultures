import 'package:flutter/material.dart';
import 'package:indian_cultures/culture/culture.dart';
import 'package:indian_cultures/culture_list/culture_list.dart';
import 'package:indian_cultures/description/description.dart';
import 'package:indian_cultures/favorite/favorite.dart';
import 'package:indian_cultures/login/login.dart';
import 'package:indian_cultures/login_otp/login_otp.dart';
import 'package:indian_cultures/review/review.dart';
import 'package:indian_cultures/welcome/welcome.dart';
import 'package:indian_cultures/widgets/page_set_up.dart';

import '../home/home.dart';
import '../profile/profile.dart';


Map<String, WidgetBuilder> routes = {
  '/home': (context) => Home(),
  '/profile': (context) => Profile(),
  '/favorite': (context) => Favorite(),
  '/culture': (context) => Culture(),
  '/culture_list': (context) => CultureList(),
  '/description': (context) => Description(),
  '/login': (context) => Login(),
  '/login_otp': (context) => LoginOTP(),
  '/review': (context) => Review(),
  '/welcome': (context) => Welcome(),
  '/': (context) => PageSetUp(),
};
