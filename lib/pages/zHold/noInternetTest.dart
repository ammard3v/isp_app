// ignore_for_file: file_names

import 'package:flutter/material.dart';

class NoInternetPage extends StatelessWidget {
  const NoInternetPage({super.key});

  @override
  Widget build(BuildContext context) {
    // ConnectivityProvider connectivityProvider = ConnectivityProvider();
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/demo_isp_app.png',
            width: 200,
            height: 200,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "No internet",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Text("No internet connection found",
              style: TextStyle(
                fontSize: 18,
              )),
          Text("check your connection",
              style: TextStyle(
                fontSize: 18,
              )),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    ));
  }
}
