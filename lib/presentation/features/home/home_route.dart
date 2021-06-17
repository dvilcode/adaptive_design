import 'dart:math';

import 'package:adaptive_design/presentation/features/person/person_detail_route.dart';

import '../../../fixtures/people.dart';
import 'package:flutter/material.dart';

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
          return Center(
            child: ListView(
              physics: const BouncingScrollPhysics(),
              children: <Widget>[
                for (var person in people)
                  ListTile(
                    leading: CircleAvatar(
                      child: Text(
                        person.firstName.substring(0, 1),
                      ),
                      backgroundColor: Colors
                          .primaries[Random().nextInt(Colors.primaries.length)],
                      foregroundColor: Colors.white,
                    ),
                    title: Text('${person.firstName} ${person.lastName}'),
                    onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return PersonDetailRoute(person: person);
                        },
                      ),
                    ),
                  ),
              ],
            ),
          );
        },
      ),
    );
  }
}
