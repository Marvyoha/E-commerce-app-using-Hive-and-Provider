import 'package:e_commerce_app_using_hive_and_provider/core/providers/homescreen_provider.dart';
import 'package:provider/provider.dart';

import '/constants/items.dart';
import '/views/widgets/grids.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ionicons/ionicons.dart';

import '../../../constants/fontstyles.dart';
import '../../../constants/globalvariables.dart';
import '../../widgets/filter.dart';
import '../../widgets/scaffoldbackground.dart';

class ShowAll extends StatelessWidget {
  const ShowAll({super.key});

  @override
  Widget build(BuildContext context) {
    final menItems = MenItems();
    final womenItems = WomenItems();
    final kidItems = KidsItems();

    return Consumer<HomeScreenProvider>(
      builder: (context, index, child) => DefaultTabController(
        length: 3,
        initialIndex: index.position,
        child: ScaffoldBackground(
          body: Padding(
              padding: GlobalVariables.mainScreenPadding(context),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: const Icon(
                          Ionicons.close,
                          size: 30,
                        ),
                      ),
                      GestureDetector(
                          onTap: () {
                            filterDialog(context);
                          },
                          child: const Icon(FontAwesomeIcons.sliders))
                    ],
                  ),
                  const SizedBox(height: 20),
                  TabBar(
                      isScrollable: true,
                      indicatorSize: TabBarIndicatorSize.label,
                      indicatorColor: Theme.of(context).colorScheme.primary,
                      labelColor: Theme.of(context).colorScheme.onBackground,
                      labelStyle: FontStyles.headerSmall,
                      unselectedLabelColor: Theme.of(context)
                          .colorScheme
                          .background
                          .withOpacity(0.5),
                      tabs: const [
                        Tab(text: 'Men Shoes'),
                        Tab(text: 'Women Shoes'),
                        Tab(text: 'Kids Shoes'),
                      ]),
                  const SizedBox(height: 10),
                  Expanded(
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(16)),
                      child: TabBarView(children: [
                        // MEN ITEMS
                        MasonryGridView.builder(
                          gridDelegate:
                              const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2),
                          mainAxisSpacing: 7,
                          crossAxisSpacing: 14,
                          itemCount: menItems.images.length,
                          itemBuilder: (context, index) {
                            final isDivisibleBy2 = index % 2 == 0;
                            return SizedBox(
                              height: isDivisibleBy2
                                  ? GlobalVariables.sizeHeight(context) * 0.3
                                  : GlobalVariables.sizeHeight(context) * 0.44,
                              child: Grids(
                                image: menItems.images[index],
                                name: menItems.names[index],
                                price: menItems.prices[index],
                              ),
                            );
                          },
                        ),
                        // WOMEN ITEMS
                        MasonryGridView.builder(
                          gridDelegate:
                              const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2),
                          mainAxisSpacing: 7,
                          crossAxisSpacing: 14,
                          itemCount: womenItems.images.length,
                          itemBuilder: (context, index) {
                            final isDivisibleBy2 = index % 2 == 0;
                            return SizedBox(
                              height: isDivisibleBy2
                                  ? GlobalVariables.sizeHeight(context) * 0.3
                                  : GlobalVariables.sizeHeight(context) * 0.44,
                              child: Grids(
                                image: womenItems.images[index],
                                name: womenItems.names[index],
                                price: womenItems.prices[index],
                              ),
                            );
                          },
                        ),

                        // KIDS ITEMS
                        MasonryGridView.builder(
                          gridDelegate:
                              const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2),
                          mainAxisSpacing: 7,
                          crossAxisSpacing: 14,
                          itemCount: kidItems.images.length,
                          itemBuilder: (context, index) {
                            final isDivisibleBy2 = index % 2 == 0;
                            return SizedBox(
                              height: isDivisibleBy2
                                  ? GlobalVariables.sizeHeight(context) * 0.3
                                  : GlobalVariables.sizeHeight(context) * 0.44,
                              child: Grids(
                                image: kidItems.images[index],
                                name: kidItems.names[index],
                                price: menItems.prices[index],
                              ),
                            );
                          },
                        ),
                      ]),
                    ),
                  )
                ],
              )),
        ),
      ),
    );
  }
}
