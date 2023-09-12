import 'package:e_commerce_app_using_hive_and_provider/core/providers/mainscreen_provider.dart';
import 'package:e_commerce_app_using_hive_and_provider/views/screens/addpage.dart';
import 'package:e_commerce_app_using_hive_and_provider/views/screens/cartpage.dart';
import 'package:e_commerce_app_using_hive_and_provider/views/screens/homePage%20refactor/homepage.dart';
import 'package:e_commerce_app_using_hive_and_provider/views/screens/profilepage.dart';
import 'package:e_commerce_app_using_hive_and_provider/views/screens/searchpage.dart';
import 'package:e_commerce_app_using_hive_and_provider/views/widgets/bottomnav.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    List<Widget> pageList = const [
      HomePage(),
      SearchPage(),
      AddPage(),
      CartPage(),
      ProfilePage()
    ];
    return Consumer<MainScreenProvider>(
      builder: (context, pageProvider, child) => Scaffold(
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [pageList[pageProvider.pageIndex], const BtmNvBr()],
        ),
      ),
    );
  }
}
