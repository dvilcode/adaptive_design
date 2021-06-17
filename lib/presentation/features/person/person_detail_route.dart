import 'package:flutter/material.dart';

import '../../../model/person_dto.dart';

class PersonDetailRoute extends StatelessWidget {
  const PersonDetailRoute({
    required this.person,
    Key? key,
  }) : super(key: key);

  final PersonDto person;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(color: Colors.orange),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(person.firstName),
            Text(person.lastName),
            Text(person.phone.toString()),
          ],
        ),
      ),
    );
  }
}
