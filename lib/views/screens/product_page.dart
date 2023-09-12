import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import '../../constants/globalvariables.dart';
import '../widgets/scaffoldbackground.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return ScaffoldBackground(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leadingWidth: 0,
            title: Padding(
              padding: const EdgeInsetsDirectional.only(bottom: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: const Icon(
                      Ionicons.close,
                      size: 30,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: const Icon(
                      Ionicons.ellipsis_horizontal,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
            pinned: true,
            snap: false,
            floating: true,
            backgroundColor: Colors.transparent,
            expandedHeight: GlobalVariables.sizeHeight(context),
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(children: [
                SizedBox(
                  height: GlobalVariables.sizeHeight(context) * 0.5,
                  width: GlobalVariables.sizeWidth(context),
                  child: PageView.builder(itemBuilder: (context, int index) {
                    return Stack(
                      children: [
                        Container(
                          height: GlobalVariables.sizeHeight(context) * 0.39,
                          width: GlobalVariables.sizeWidth(context),
                          color: Colors.transparent,
                          child: Image.asset('assets/images/women/women1.png',
                              fit: BoxFit.contain),
                        ),
                        Positioned(
                            top: GlobalVariables.sizeHeight(context) * 0.09,
                            right: 20,
                            child: const Icon(
                              Ionicons.heart_outline,
                            ))
                      ],
                    );
                  }),
                )
              ]),
            ),
          )
        ],
      ),
    );
  }
}
