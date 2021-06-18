import 'dart:math';

import 'package:flutter/material.dart';

import '../../../../fixtures/people.dart';
import '../../../../model/person_dto.dart';

class PeopleList extends StatelessWidget {
  const PeopleList({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  final void Function(PersonDto) onTap;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      children: <Widget>[
        for (var person in people)
          ListTile(
            leading: CircleAvatar(
              child: Text(
                person.firstName.substring(0, 1),
              ),
              backgroundColor:
                  Colors.primaries[Random().nextInt(Colors.primaries.length)],
              foregroundColor: Colors.white,
            ),
            title: Text('${person.firstName} ${person.lastName}'),
            onTap: () => onTap(person),
          ),
      ],
    );
  }
}
