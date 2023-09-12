import 'package:flutter/material.dart';
import '../../../constants/Items.dart';
import '../../../constants/fontstyles.dart';
import '../../../constants/globalvariables.dart';
import '../../widgets/latestshoes.dart';
import '../../widgets/productdisplay.dart';
import 'show_all.dart';

class WomenShoes extends StatelessWidget {
  const WomenShoes({super.key});

  @override
  Widget build(BuildContext context) {
    final womenItems = WomenItems();
    return Column(
      children: [
        SizedBox(
          height: GlobalVariables.sizeHeight(context) * 0.4,
          child: ListView.builder(
            itemCount: womenItems.images.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return ProductDisplay(
                price: womenItems.prices[index],
                category: womenItems
                    .categories[0], // Since category list has only one item
                name: womenItems.names[index],
                colors: womenItems.colors[index],
                image: womenItems.images[index],
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
            itemCount: womenItems.latestShoes.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return LatestShoes(latestShoes: womenItems.latestShoes[index]);
            },
          ),
        ),
      ],
    );
  }
}
