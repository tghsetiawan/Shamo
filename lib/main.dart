import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shamo/pages/cart_page.dart';
import 'package:shamo/pages/checkout_page.dart';
import 'package:shamo/pages/checkout_success_page.dart';
import 'package:shamo/pages/detail_chat.dart';
import 'package:shamo/pages/edit_profile_page.dart';
import 'package:shamo/pages/home/main_page.dart';
import 'package:shamo/pages/product_page.dart';
import 'package:shamo/pages/sign_in_page.dart';
import 'package:shamo/pages/sign_up_page.dart';
import 'package:shamo/pages/splash_page.dart';
import 'package:shamo/providers/auth_provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AuthProvider(),
        )
      ],
      child: GestureDetector(
        onTap: () {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: '/',
          routes: {
            '/': (context) => const SplashPage(),
            '/sign-in': (context) => const SignInPage(),
            '/sign-up': (context) => SignUpPage(),
            '/home': (context) => const MainPage(),
            '/detail-chat': (context) => const DetailChatPage(),
            '/edit-profile': (context) => const EditProfilePage(),
            '/product': (context) => ProductPage(),
            '/cart': (context) => const CartPage(),
            '/checkout': (context) => const CheckoutPage(),
            '/checkout-success': (context) => const CheckoutSuccessPage(),
          },
        ),
      ),
    );
  }
}
