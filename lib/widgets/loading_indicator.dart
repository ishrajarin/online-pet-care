import 'package:flutter/material.dart';

class LoadingIndicator extends StatelessWidget {
  final String? message;

  const LoadingIndicator({Key? key, this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
          ),
          if (message != null)
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                message!,
                style: TextStyle(fontSize: 16, color: Colors.blue),
              ),
            ),
        ],
      ),
    );
  }
}
