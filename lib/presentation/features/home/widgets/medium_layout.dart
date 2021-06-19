import 'package:flutter/material.dart';

import '/presentation/features/person/person_detail.dart';
import '/presentation/features/person/widgets/grid_person_list.dart';

class MediumLayout extends StatelessWidget {
  const MediumLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GridPersonList(
        onTap: (person) => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return PersonDetail(person: person);
            },
          ),
        ),
      ),
    );
  }
}
