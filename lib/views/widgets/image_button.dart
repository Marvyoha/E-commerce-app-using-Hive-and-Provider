import 'package:flutter/material.dart';

class ImageButton extends StatelessWidget {
  final void Function()? onPress;
  final String logo;

  const ImageButton({Key? key, this.onPress, required this.logo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: onPress,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 60,
            height: 45,
            decoration: BoxDecoration(
                border: Border.all(
                    width: 1, color: Theme.of(context).colorScheme.primary),
                borderRadius: BorderRadius.circular(12)),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  logo,
                  fit: BoxFit.fitWidth,
                )),
          ),
        ));
  }
}
