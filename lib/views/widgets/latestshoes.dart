import 'package:flutter/material.dart';

import '../../constants/globalvariables.dart';

class LatestShoes extends StatelessWidget {
  const LatestShoes({
    super.key,
    required this.latestShoes,
  });

  final String latestShoes;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: GlobalVariables.listViewPadding(context),
      child: Container(
          decoration: GlobalVariables.listViewDecorSmall(context).copyWith(
            color: Theme.of(context).colorScheme.primaryContainer,
          ),
          height: GlobalVariables.sizeHeight(context) * 0.12,
          width: GlobalVariables.sizeWidth(context) * 0.28,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              latestShoes,
              fit: BoxFit.fitWidth,
            ),
          )),
    );
  }
}
