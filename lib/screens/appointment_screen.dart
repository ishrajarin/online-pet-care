import 'package:flutter/material.dart';

class AppointmentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Book an Appointment')),
      body: Center(child: Text('Select a vet and appointment time.')),
    );
  }
}
