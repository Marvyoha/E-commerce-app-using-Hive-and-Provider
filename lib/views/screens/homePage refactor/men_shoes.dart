import 'package:flutter/material.dart';
import '../../../constants/Items.dart';
import '../../../constants/fontstyles.dart';
import '../../../constants/globalvariables.dart';
import '../../widgets/latestshoes.dart';
import '../../widgets/productdisplay.dart';
import 'show_all.dart';

class MenShoes extends StatelessWidget {
  const MenShoes({super.key});

  @override
  Widget build(BuildContext context) {
    final menItems = MenItems();
    return Column(
      children: [
        SizedBox(
          height: GlobalVariables.sizeHeight(context) * 0.4,
          child: ListView.builder(
            itemCount: menItems.images.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return ProductDisplay(
                price: menItems.prices[index],
                category: menItems
                    .categories[0], // Since category list has only one item
                name: menItems.names[index],
                colors: menItems.colors[index],
                image: menItems.images[index],
              );
            },
          ),
        ),
        Padding(
          padding: GlobalVariables.listViewPadding(context)
              .copyWith(top: 0, bottom: 10),
          child: GestureDetector(
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => const ShowAll())),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Latest Shoes',
                    style: FontStyles.bodyLarge.copyWith(
                      color: Theme.of(context).colorScheme.onPrimary,
                    )),
                Row(
                  children: [
                    Text('Show All',
                        style: FontStyles.bodyMedium.copyWith(
                          color: Theme.of(context).colorScheme.onPrimary,
                        )),
                    Icon(
                      Icons.chevron_right_rounded,
                      color: Theme.of(context).colorScheme.onPrimary,
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: GlobalVariables.sizeHeight(context) * 0.17,
          child: ListView.builder(
            itemCount: menItems.latestShoes.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return LatestShoes(latestShoes: menItems.latestShoes[index]);
            },
          ),
        ),
      ],
    );
  }
}
