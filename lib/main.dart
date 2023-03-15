import 'package:final_year_project/Provider/favorite_provider.dart';
import 'package:final_year_project/Provider/home_page.dart';
import 'package:final_year_project/splash%20screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Provider/count_provider.dart';
import 'Provider/favorite_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => Count(),
        ),
        ChangeNotifierProvider(create: (_) => FavoriteProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: FavoriteScreen(),
      ),
    );
  }
}
