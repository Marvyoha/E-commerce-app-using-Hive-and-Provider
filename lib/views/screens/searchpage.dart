import 'package:flutter/material.dart';

import '../widgets/scaffoldbackground.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldBackground(
      body: Center(child: Text('Search')),
    );
  }
}
