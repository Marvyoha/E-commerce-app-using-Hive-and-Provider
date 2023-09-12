import 'package:e_commerce_app_using_hive_and_provider/constants/fontstyles.dart';
import 'package:e_commerce_app_using_hive_and_provider/constants/globalvariables.dart';
import 'package:flutter/material.dart';

class FilterButton extends StatelessWidget {
  final void Function()? onPress;
  final String label;

  const FilterButton({Key? key, this.onPress, required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPress,
      child: Container(
        width: 90,
        height: 45,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(9),
            border: Border.all(width: 1, color: Colors.white)),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: FittedBox(
              child: Text(
                label,
                style: FontStyles.bodyLarge
                    .copyWith(color: Theme.of(context).colorScheme.primary),
              ),
            ),
          ),
        ),
      ), // Provide the text you want for the button
    );
  }
}
