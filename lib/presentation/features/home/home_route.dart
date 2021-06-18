import 'package:flutter/material.dart';

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
          if (constraints.maxWidth > 400) {
            return const WideLayout();
          } else {
            return const NarrowLayout();
          }
        },
      ),
    );
  }
}
