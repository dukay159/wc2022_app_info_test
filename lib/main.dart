import 'package:bet_app/presentation/views/login_screen.dart';
import 'package:bet_app/presentation/views/user_home_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'presentation/views/admin_screen.dart';
import 'presentation/views/user_screen.dart';
import 'presentation/views/login_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HSC WC2022',
      initialRoute: '/userHome',
      routes: {
        '/': (context) => const UserScreen(),
        '/admin': (context) => const AdminScreen(),
        '/login': ((context) => const LoginScreen()),
        '/userHome': ((context) => const UserHome())
      },
      // home: UserScreen(),
    );
  }
}
