import 'package:flutter/material.dart';

import '../widgets/scaffoldbackground.dart';

class AddPage extends StatelessWidget {
  const AddPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScaffoldBackground(
      body: Center(child: Text('Add page')),
    );
  }
}
