import 'package:flutter/material.dart';
import '../../../constants/fontstyles.dart';
import '../../../constants/globalvariables.dart';
import '../../../constants/items.dart';
import '../../widgets/latestshoes.dart';
import '../../widgets/productdisplay.dart';
import 'show_all.dart';

class KidsShoes extends StatelessWidget {
  const KidsShoes({super.key});

  @override
  Widget build(BuildContext context) {
    final kidsItem = KidsItems();
    return Column(
      children: [
        SizedBox(
          height: GlobalVariables.sizeHeight(context) * 0.4,
          child: ListView.builder(
            itemCount: kidsItem.images.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return ProductDisplay(
                price: kidsItem.prices[index],
                category: kidsItem
                    .categories[0], // Since category list has only one item
                name: kidsItem.names[index],
                colors: kidsItem.colors[index],
                image: kidsItem.images[index],
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
            itemCount: kidsItem.latestShoes.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return LatestShoes(latestShoes: kidsItem.latestShoes[index]);
            },
          ),
        ),
      ],
    );
  }
}
