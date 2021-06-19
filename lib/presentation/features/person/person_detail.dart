import 'package:flutter/material.dart';

import '../../../model/person_dto.dart';

class PersonDetail extends StatelessWidget {
  const PersonDetail({
    required this.person,
    Key? key,
  }) : super(key: key);

  final PersonDto person;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: const BoxDecoration(color: Colors.orange),
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxHeight > 200) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('${person.firstName} ${person.lastName}'),
                Text(person.phone.toString()),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    'Contact Me',
                  ),
                ),
              ],
            );
          } else {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('${person.firstName} ${person.lastName}'),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    'Contact Me',
                  ),
                ),
              ],
            );
          }
        },
      ),
    );
  }
}
