import 'package:flutter/material.dart';

import '../../constants/fontstyles.dart';

class Grids extends StatefulWidget {
  const Grids(
      {super.key,
      required this.price,
      required this.name,
      required this.image});

  final String price;
  final String name;
  final String image;

  @override
  State<Grids> createState() => _GridsState();
}

class _GridsState extends State<Grids> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer,
        borderRadius: const BorderRadius.all(Radius.circular(16)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              widget.image,
              height: 80,
            ),
            FittedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.name,
                    style: FontStyles.bodyMedium,
                  ),
                  Text(
                    widget.price,
                    style: FontStyles.bodyMedium,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
