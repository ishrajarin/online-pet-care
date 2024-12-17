import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:vet_app/models/appointment.dart';

import '../models/appointment.dart';

class AppointmentService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  // Fetch appointment details by pet ID
  Future<List<Appointment>> getAppointmentsByPetId(String petId) async {
    try {
      QuerySnapshot querySnapshot = await _db
          .collection('appointments')
          .where('petId', isEqualTo: petId)
          .get();

      return querySnapshot.docs
          .map((doc) => Appointment.fromMap(doc.data() as Map<String, dynamic>))
          .toList();
    } catch (e) {
      print("Error fetching appointments: $e");
      return [];
    }
  }
}
