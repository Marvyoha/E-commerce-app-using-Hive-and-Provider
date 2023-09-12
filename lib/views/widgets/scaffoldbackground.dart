import 'package:e_commerce_app_using_hive_and_provider/constants/globalvariables.dart';
import 'package:flutter/material.dart';

class ScaffoldBackground extends StatelessWidget {
  final Widget body;

  const ScaffoldBackground({
    Key? key,
    required this.body,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: GlobalVariables.sizeHeight(context),
            width: GlobalVariables.sizeWidth(context),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Theme.of(context).colorScheme.primaryContainer,
                  Theme.of(context).colorScheme.primary
                ],
              ),
            ),
          ),
          SafeArea(child: body),
        ],
      ),
    );
  }
}
