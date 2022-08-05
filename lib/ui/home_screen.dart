import 'package:flutter/material.dart';
import 'package:flutter_riverpod_boilerplate/utils/app_styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppStyles.white,
      body: Center(
        child: Text('Home Page'),
      ),
    );
  }
}
