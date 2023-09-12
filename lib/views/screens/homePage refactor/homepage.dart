import 'package:e_commerce_app_using_hive_and_provider/core/providers/homescreen_provider.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../constants/fontstyles.dart';
import '../../../constants/globalvariables.dart';
import '../../widgets/scaffoldbackground.dart';
import 'kids_shoes.dart';
import 'men_shoes.dart';
import 'women_shoes.dart';

// Define the HomePage widget
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

// Define the state of the HomePage widget
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<HomeScreenProvider>(
      builder: (context, index, child) => ScaffoldBackground(
        body: DefaultTabController(
          length: 3,
          child: Padding(
            padding: GlobalVariables.mainScreenPadding(
                context), // Apply padding to the body
            child: SizedBox(
              width: GlobalVariables.sizeWidth(
                  context), // Set the width of the SizedBox to the width of the screen
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Atletics Shoes', // Display the text 'Atletics Shoes'
                    style: FontStyles
                        .headerLarge, // Apply the headerLarge style to the text
                  ),
                  Text(
                    'Collection', // Display the text 'Collection'
                    style: FontStyles
                        .headerLarge, // Apply the headerLarge style to the text
                  ),
                  TabBar(
                    onTap: (value) {
                      if (value == 0) {
                        index.position = 0;
                      } else if (value == 1) {
                        index.position = 1;
                      } else if (value == 2) {
                        index.position = 2;
                      }
                    },
                    isScrollable: true, // Enable scrolling for the TabBar
                    indicatorSize: TabBarIndicatorSize
                        .label, // Set the size of the indicator to match the label
                    indicatorColor: Theme.of(context)
                        .colorScheme
                        .primary, // Set the color of the indicator
                    labelColor: Theme.of(context)
                        .colorScheme
                        .onBackground, // Set the color of the selected label
                    labelStyle: FontStyles
                        .headerSmall, // Apply the headerSmall style to the label
                    unselectedLabelColor: Theme.of(context)
                        .colorScheme
                        .background
                        .withOpacity(
                            0.5), // Set the color of the unselected label
                    tabs: const [
                      Tab(
                          text:
                              'Men Shoes'), // Display a tab with the text 'Men Shoes'
                      Tab(
                          text:
                              'Women Shoes'), // Display a tab with the text 'Women Shoes'
                      Tab(
                          text:
                              'Kids Shoes'), // Display a tab with the text 'Kids Shoes'
                    ],
                  ),
                  const Expanded(
                    child: TabBarView(
                      children: [
                        MenShoes(),
                        WomenShoes(),
                        KidsShoes()
                      ], // Display the corresponding widget for each tab
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
