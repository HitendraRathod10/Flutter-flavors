import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'demo_screen.dart';
import 'environment.dart';
import 'http_overrides.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Constants.setEnvironment(Environment.adminDev);
  runApp(const DemoScreen());
}
