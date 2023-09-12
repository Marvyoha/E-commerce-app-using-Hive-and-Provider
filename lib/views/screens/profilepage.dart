import 'package:flutter/material.dart';

import '../widgets/scaffoldbackground.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScaffoldBackground(
      body: Center(child: Text('Profile Page')),
    );
  }
}
