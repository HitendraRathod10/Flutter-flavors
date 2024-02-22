import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_flavor_demo/demo_screen.dart';
import 'package:flutter_flavor_demo/environment.dart';
import 'package:flutter_flavor_demo/http_overrides.dart';

import 'main.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Constants.setEnvironment(Environment.userDev);
  runApp(const DemoScreen());
}
