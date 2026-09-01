import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class EquatableTesting extends StatefulWidget {
  const EquatableTesting({super.key});

  @override
  State<EquatableTesting> createState() => _EquatableTestingState();
}

class _EquatableTestingState extends State<EquatableTesting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        Person person = Person(name: 'Eshita', age: 28);
        Person person1 = Person(name: 'Eshita', age: 28);
        print(person == person1);
      }),
    );
  }
}

class Person extends Equatable{
  final String name;
  final int age;

  const Person({required this.name, required this.age});

  @override
  List<Object?> get props => [name, age];
}
