import 'package:flutter/material.dart';

import 'package:facebook_clone_responsive_ui/config/config.dart';
import 'package:facebook_clone_responsive_ui/screens/screens.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Facebook Clone Responsive UI',
      debugShowCheckedModeBanner: false,
      theme: myTheme,
      home: NavigationScreen(),
    );
  }
}

//! run on a Device Preview Mode
// import 'package:device_preview/device_preview.dart';

// void main() {
//   runApp(
//     DevicePreview(builder: (context) => MyApp()),
//   );
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Facebook Clone Responsive UI',
//       debugShowCheckedModeBanner: false,
//       locale: DevicePreview.locale(context), // Add the locale here
//       builder: DevicePreview.appBuilder, // Add the builder here
//       theme: myTheme,
//       home: NavigationScreen(),
//     );
//   }
// }
