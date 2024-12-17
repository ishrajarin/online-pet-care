import 'package:flutter/material.dart';
import 'package:vet_app/models/pet.dart';
import 'package:vet_app/services/firebase_service.dart';

import '../models/pet.dart';
import '../services/firebase_service.dart';

class PetProfileScreen extends StatefulWidget {
  final String petId;

  PetProfileScreen({required this.petId});

  @override
  _PetProfileScreenState createState() => _PetProfileScreenState();
}

class _PetProfileScreenState extends State<PetProfileScreen> {
  late Pet pet;

  @override
  void initState() {
    super.initState();
    fetchPetData();
  }

  void fetchPetData() async {
    var petData = await FirebaseService().getPetById(widget.petId);
    setState(() {
      pet = petData!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pet Profile')),
      body: pet == null
          ? Center(child: CircularProgressIndicator())
          : Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(pet.profileImageUrl),
            ),
            SizedBox(height: 16),
            Text('Name: ${pet.name}', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Text('Breed: ${pet.breed}', style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
