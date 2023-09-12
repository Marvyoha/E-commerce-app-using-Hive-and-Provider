import 'package:flutter/material.dart';
import '../../constants/Items.dart';
import 'custom_spacer.dart';
import '../../constants/fontstyles.dart';
import '../../constants/globalvariables.dart';
import 'filter_buttons.dart';
import 'image_button.dart';

// Function to show the filter dialog
filterDialog(BuildContext context) {
  double range = 300; // Initial value for the range
  final brands = Brands();

  // Show the modal bottom sheet
  showModalBottomSheet(
    context: context,
    backgroundColor: Colors.transparent,
    barrierColor:
        Theme.of(context).colorScheme.primaryContainer.withOpacity(0.8),
    isScrollControlled: true,
    builder: (context) => Container(
      height: GlobalVariables.sizeHeight(context) * 0.82,
      width: GlobalVariables.sizeWidth(context),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
        color: Theme.of(context).colorScheme.primaryContainer.withOpacity(0.8),
      ),
      child: Column(
        children: [
          const SizedBox(height: 20),
          Container(
            height: 10,
            width: 50,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: BorderRadius.circular(90),
            ),
          ),
          SizedBox(
            height: GlobalVariables.sizeHeight(context) * 0.7,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const CustomSpacer(),
                Text(
                  'Filter',
                  style: FontStyles.headerLarge,
                ),
                const CustomSpacer(),
                Text('Gender', style: FontStyles.headerSmall),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FilterButton(label: 'Men'),
                    FilterButton(label: 'Women'),
                    FilterButton(label: 'Kids'),
                  ],
                ),
                const CustomSpacer(),
                Text('Category', style: FontStyles.headerSmall),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FilterButton(label: 'Shoes'),
                    FilterButton(label: 'Apparels'),
                    FilterButton(label: 'Accessories'),
                  ],
                ),
                const CustomSpacer(),
                Text('Price', style: FontStyles.headerSmall),
                Slider(
                  value: range,
                  label: range.toString(),
                  activeColor: Theme.of(context).colorScheme.inversePrimary,
                  inactiveColor: Theme.of(context).colorScheme.primary,
                  thumbColor: Theme.of(context).colorScheme.onPrimary,
                  max: 500,
                  secondaryTrackValue: 200,
                  divisions: 10,
                  onChanged: ((value) {}),
                ),
                const CustomSpacer(),
                Text('Brand', style: FontStyles.headerSmall),
                Container(
                  padding: const EdgeInsets.all(10),
                  height: 80,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return ImageButton(logo: brands.brands[index]);
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
