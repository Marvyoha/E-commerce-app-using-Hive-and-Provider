import 'package:e_commerce_app_using_hive_and_provider/core/providers/mainscreen_provider.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:provider/provider.dart';

class BtmNvBr extends StatelessWidget {
  const BtmNvBr({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primaryContainer,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Consumer<MainScreenProvider>(
            builder: (context, pageProvider, child) => Container(
                  padding: const EdgeInsets.all(12),
                  margin:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BtmNvBrIcon(
                          icon: pageProvider.pageIndex == 0
                              ? Ionicons.home
                              : Ionicons.home_outline,
                          onTap: () {
                            pageProvider.pageIndex = 0;
                          }),
                      BtmNvBrIcon(
                          icon: pageProvider.pageIndex == 1
                              ? Ionicons.search
                              : Ionicons.search_outline,
                          onTap: () {
                            pageProvider.pageIndex = 1;
                          }),
                      BtmNvBrIcon(
                          icon: pageProvider.pageIndex == 2
                              ? Ionicons.add
                              : Ionicons.add_outline,
                          onTap: () {
                            pageProvider.pageIndex = 2;
                          }),
                      BtmNvBrIcon(
                          icon: pageProvider.pageIndex == 3
                              ? Ionicons.cart
                              : Ionicons.cart_outline,
                          onTap: () {
                            pageProvider.pageIndex = 3;
                          }),
                      BtmNvBrIcon(
                          icon: pageProvider.pageIndex == 4
                              ? Ionicons.person
                              : Ionicons.person_outline,
                          onTap: () {
                            pageProvider.pageIndex = 4;
                          }),
                    ],
                  ),
                )),
      ),
    );
  }
}

class BtmNvBrIcon extends StatelessWidget {
  const BtmNvBrIcon({super.key, required this.icon, required this.onTap});
  final void Function()? onTap;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: 50,
        width: 60,
        child: Icon(
          icon,
          size: 28,
          color: Theme.of(context).colorScheme.onPrimaryContainer,
        ),
      ),
    );
  }
}
