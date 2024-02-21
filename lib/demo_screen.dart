import 'package:flutter/material.dart';
import 'environment.dart';

class DemoScreen extends StatefulWidget {
  const DemoScreen({super.key});

  @override
  State<DemoScreen> createState() => _DemoScreenState();
}

class _DemoScreenState extends State<DemoScreen> {
  String? userRole;
  String? environment;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    environment = '${Constants.whereAmI}';
    userRole = (Constants.whoAmI == UR.admin) ? 'admin' : 'user';
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Text(
            "I am in $environment environment with $userRole role",
            style: const TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
