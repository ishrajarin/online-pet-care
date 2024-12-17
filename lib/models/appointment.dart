class Appointment {
  String id;
  String petId;
  String vetId;
  DateTime appointmentTime;
  String status;

  Appointment({
    required this.id,
    required this.petId,
    required this.vetId,
    required this.appointmentTime,
    required this.status,
  });

  // Convert an Appointment object into a Map
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'petId': petId,
      'vetId': vetId,
      'appointmentTime': appointmentTime.toIso8601String(),
      'status': status,
    };
  }

  // Create an Appointment object from a Map
  factory Appointment.fromMap(Map<String, dynamic> map) {
    return Appointment(
      id: map['id'],
      petId: map['petId'],
      vetId: map['vetId'],
      appointmentTime: DateTime.parse(map['appointmentTime']),
      status: map['status'],
    );
  }
}
