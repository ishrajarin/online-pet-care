import 'package:flutter/material.dart';
import 'package:vet_app/models/pet.dart';

import '../models/pet.dart';

class CustomPetCard extends StatelessWidget {
  final Pet pet;

  CustomPetCard({required this.pet});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(backgroundImage: NetworkImage(pet.profileImageUrl)),
        title: Text(pet.name),
        subtitle: Text(pet.breed),
        onTap: () {
          // Navigate to pet profile screen
          Navigator.pushNamed(context, '/petProfile', arguments: pet.id);
        },
      ),
    );
  }
}
