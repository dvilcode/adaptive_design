import 'package:meta/meta.dart';

@immutable
class PersonDto {
  const PersonDto({
    required this.id,
    required this.phone,
    required this.firstName,
    required this.lastName,
    // required this.date,
    // required this.description,
    // required this.alias,
    // required this.city,
    // required this.country,
    // required this.countryCode,
    // required this.emailUses,
    // required this.emailFrom,
    // required this.contacts,
    // required this.age,
  });

  final int id;
  final int phone;
  final String firstName;
  final String lastName;
  // final DateTime date;
  // final String description;
  // final String alias;
  // final String city;
  // final String country;
  // final String countryCode;
  // final String emailUses;
  // final String emailFrom;
  // final List<String> contacts;
  // final int age;
}
