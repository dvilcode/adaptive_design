import 'package:flutter/material.dart';

import '../../person/person_detail.dart';
import '../../person/widgets/person_list.dart';

class NarrowLayout extends StatelessWidget {
  const NarrowLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: PeopleList(
        onTap: (person) => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return Scaffold(
                appBar: AppBar(),
                body: PersonDetail(person: person),
              );
            },
          ),
        ),
      ),
    );
  }
}
