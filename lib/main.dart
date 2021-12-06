import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hello/bindings/home_page_binding.dart';
import 'package:hello/bindings/login_page_binding.dart';
import 'package:hello/modules/home/home_page.dart';
import 'package:hello/modules/login/login_page.dart';

import 'modules/home/splash_page.dart';

// void main() => runApp(
//   GetMaterialApp(
//       debugShowCheckedModeBanner: false,
//       initialRoute: '/',
//       defaultTransition: Transition.native,
//       locale: Locale('pt', 'BR'),
//       getPages: [
//         GetPage(
//           name: "/",
//           page: () => SplashPage(),
//         ),
//         GetPage(
//           name: '/home',
//           page: () => HomePage(),
//           binding: HomePageBinding(),
//         ),
//          GetPage(
//           name: '/login',
//           page: () => LoginPage(),
//           binding: LoginBinding(),
//         ),
//       ],
//     )
// );

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return MultiProvider(
    //   providers: [
    //     Provider<AuthenticationProvider>(
    //       create: (_) => AuthenticationProvider(FirebaseAuth.instance),
    //     ),
    //     StreamProvider(
    //       create: (context) => context.read<AuthenticationProvider>().authState,
    //     )
    //   ],
    //   child: MaterialApp(
    //     title: 'Firebase Authentication',
    //     home: Authenticate(),
    //   ),
    // );
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      defaultTransition: Transition.native,
      locale: Locale('pt', 'BR'),
      getPages: [
        GetPage(
          name: "/",
          page: () => SplashPage(),
        ),
        GetPage(
          name: '/home',
          page: () => HomePage(),
          binding: HomePageBinding(),
        ),
         GetPage(
          name: '/login',
          page: () => LoginPage(),
          binding: LoginBinding(),
        ),
      ],
    );
  }
}