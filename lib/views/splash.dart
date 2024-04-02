import 'package:flutter/material.dart';
import 'package:templax/src/exports.dart_exporter.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.hourglass_bottom,
            color: AppTheme.of(context).primaryColor,
            size: 30.0,
          ),
          const Text(
            'loading...',
            style: TextStyle(fontSize: 30.0),
          ),
        ],
      ),
    );
  }
}
