import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:vivamaxlogin/core/style.dart';
import 'package:vivamaxlogin/page/dashboard.dart';
import 'package:vivamaxlogin/page/splash_Page.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: FirebaseOptions(
        apiKey: "AIzaSyBsjYlYDDSAlJXK41D1WbQRPWyzdGUI3x4",
        appId: "1:629002924051:web:a38dbbb20b13f1bb770fe6",
        messagingSenderId: "629002924051",
        projectId: "viva-max-page",
        // Your web Firebase config options
      ),
    );
  } else {
    await Firebase.initializeApp();
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus &&
            currentFocus.focusedChild != null) {
          FocusManager.instance.primaryFocus?.unfocus();
        }
      },
      child: MaterialApp(
          title: 'Viva Max Page',
          debugShowCheckedModeBanner: false,
          theme: Stlyes.themeData(),
          initialRoute: '/',
          routes: {
            '/': (context) => HomePage(),
            '/dashboard': (context) => Dashboard()
          }),
    );
  }
}
