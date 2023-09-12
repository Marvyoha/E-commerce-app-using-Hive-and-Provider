import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:e_commerce_app_using_hive_and_provider/constants/fontstyles.dart';
import '../../constants/globalvariables.dart';

class ProductDisplay extends StatefulWidget {
  const ProductDisplay({
    Key? key,
    required this.price,
    required this.category,
    required this.name,
    required this.image,
    required this.colors,
  }) : super(key: key);

  final String price;
  final String category;
  final String name;
  final String image;
  final dynamic colors;

  @override
  State<ProductDisplay> createState() => _ProductDisplayState();
}

class _ProductDisplayState extends State<ProductDisplay> {
  bool selected = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: GlobalVariables.listViewPadding(context),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(16)),
        child: Container(
          height: GlobalVariables.sizeHeight(context),
          width: 250,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primaryContainer,
            borderRadius: BorderRadius.circular(16),
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                spreadRadius: 1,
                blurRadius: 0.6,
                offset: Offset(1, 1),
              )
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: GestureDetector(
                    onTap: () {
                      // Handle heart icon tap
                    },
                    child: const Icon(
                      Ionicons.heart_outline,
                      size: 30,
                    ),
                  ),
                ),
                Image.asset(
                  widget.image,
                  height: 100,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.name,
                      style: FontStyles.headerMedium.copyWith(fontSize: 20),
                    ),
                    Text(
                      widget.category,
                      style: FontStyles.bodyMedium
                          .copyWith(color: Colors.grey, fontSize: 17),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.price,
                        style: FontStyles.headerMedium.copyWith(
                            fontWeight: FontWeight.w600, fontSize: 20),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Color',
                            style: FontStyles.headerSmall.copyWith(
                                color: Colors.grey,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            width: 40,
                            child: ChoiceChip(
                              label: const Text(''),
                              selected: selected,
                              visualDensity: VisualDensity.compact,
                              selectedColor: widget.colors,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
