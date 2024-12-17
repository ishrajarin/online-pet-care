import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:vet_app/models/pet.dart';

import '../models/pet.dart';

class FirebaseService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  // Fetch pet details by ID
  Future<Pet?> getPetById(String petId) async {
    try {
      DocumentSnapshot doc = await _db.collection('pets').doc(petId).get();
      if (doc.exists) {
        return Pet.fromMap(doc.data() as Map<String, dynamic>);
      } else {
        return null;
      }
    } catch (e) {
      print("Error fetching pet: $e");
      return null;
    }
  }
}
