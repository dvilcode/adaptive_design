import 'dart:math';

import 'package:flutter/material.dart';

import '/fixtures/people.dart';
import '/model/person_dto.dart';

class GridPersonList extends StatelessWidget {
  const GridPersonList({required this.onTap, Key? key}) : super(key: key);

  final void Function(PersonDto) onTap;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: people.length,
          physics: const BouncingScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 150.0,
          ),
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () => onTap(people[index]),
              child: Card(
                margin: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      child: Text(
                        people[index].firstName.substring(0, 1),
                      ),
                      backgroundColor: Colors
                          .primaries[Random().nextInt(Colors.primaries.length)],
                      foregroundColor: Colors.white,
                    ),
                    Text('${people[index].firstName} ${people[index].lastName}')
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
