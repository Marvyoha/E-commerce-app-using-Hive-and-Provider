import 'package:e_commerce_app_using_hive_and_provider/core/providers/mainscreen_provider.dart';
import 'package:provider/provider.dart';

import 'constants/color_schemes.dart';
import 'package:flutter/material.dart';

import 'core/providers/homescreen_provider.dart';
import 'views/screens/mainscreen.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => HomeScreenProvider()),
        ChangeNotifierProvider(create: (context) => MainScreenProvider())
      ],
      child: MaterialApp(
        title: 'Hive/Provider App?',
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.system,
        theme: ThemeData(useMaterial3: true, colorScheme: lightColorScheme),
        darkTheme: ThemeData(useMaterial3: true, colorScheme: darkColorScheme),
        home: const MainPage(),
      ),
    );
  }
}
