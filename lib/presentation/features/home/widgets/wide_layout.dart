import 'package:flutter/material.dart';

import '../../../../model/person_dto.dart';
import '../../person/person_detail.dart';
import '../../person/widgets/person_list.dart';

class WideLayout extends StatefulWidget {
  const WideLayout({Key? key}) : super(key: key);

  @override
  _WideLayoutState createState() => _WideLayoutState();
}

class _WideLayoutState extends State<WideLayout> {
  PersonDto? _person;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.blue,
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: PeopleList(
              onTap: (person) => setState(() {
                _person = person;
              }),
            ),
          ),
          Expanded(
            flex: 3,
            child: _person == null
                ? const Placeholder()
                : PersonDetail(
                    person: _person!,
                  ),
          ),
        ],
      ),
    );
  }
}
