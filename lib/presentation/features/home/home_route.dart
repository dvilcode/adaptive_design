import 'package:flutter/material.dart';

import 'widgets/medium_layout.dart';
import 'widgets/narrow_layout.dart';
import 'widgets/wide_layout.dart';

class HomeRoute extends StatelessWidget {
  const HomeRoute({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 700) {
            return const WideLayout();
          } else if (constraints.maxWidth > 400 && constraints.maxWidth < 700) {
            return const MediumLayout();
          } else {
            return const NarrowLayout();
          }
        },
      ),
    );
  }
}
