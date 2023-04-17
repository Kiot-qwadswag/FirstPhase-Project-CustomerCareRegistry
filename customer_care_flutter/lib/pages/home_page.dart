import 'package:customer_care_flutter/pages/auth/login_page.dart';
import 'package:customer_care_flutter/pages/auth/register_page.dart';
import 'package:customer_care_flutter/widgets/appbar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<bool> popscope() async {
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: popscope,
      child: Scaffold(appBar: Appbar()),
    );
  }
}
