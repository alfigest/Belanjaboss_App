import 'package:aplikasi_eccomerce/pages/cart_page.dart';
import 'package:aplikasi_eccomerce/pages/chat_admin.dart';
import 'package:aplikasi_eccomerce/pages/checkout_page.dart';
import 'package:aplikasi_eccomerce/pages/checkout_success.dart';
import 'package:aplikasi_eccomerce/pages/detail_chat.dart';
import 'package:aplikasi_eccomerce/pages/chat_admin.dart';
import 'package:aplikasi_eccomerce/pages/home/main_page.dart';
import 'package:aplikasi_eccomerce/pages/order_history.dart';
import 'package:aplikasi_eccomerce/pages/sign_in.dart';
import 'package:aplikasi_eccomerce/pages/splash_screen.dart';
import 'package:aplikasi_eccomerce/pages/sign_up.dart';
import 'package:aplikasi_eccomerce/providers/auth_providers.dart';
import 'package:aplikasi_eccomerce/providers/cart_provider.dart';
import 'package:aplikasi_eccomerce/providers/page_provider.dart';
import 'package:aplikasi_eccomerce/providers/product_provider.dart';
import 'package:aplikasi_eccomerce/providers/transaction_provider.dart';
import 'package:aplikasi_eccomerce/providers/wishlist_provider.dart';
import 'package:aplikasi_eccomerce/widgets/edit_profile.dart';
import 'package:aplikasi_eccomerce/widgets/product_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AuthProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => ProductProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => WishlistProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => CartProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => TransactionProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => PageProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashPage(),
          '/sign-in': (context) => SignInPage(),
          '/sign-up': (context) => SignUpPage(),
          '/home': (context) => MainPage(),
          '/edit-profile': (context) => EditProfilePage(),
          '/order-history': (context) => OrderHistory(),
          '/admin-chat': (context) => AdminChatPage(),
          '/cart': (context) => CartPage(),
          '/checkout': (context) => CheckoutPage(),
          '/checkout-success': (context) => CheckoutSuccess(),
        },
      ),
    );
  }
}
