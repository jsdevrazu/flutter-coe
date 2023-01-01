import 'package:flutter/material.dart';

class MyTextForm extends StatelessWidget {
  const MyTextForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
                hintText: "Please enter email",
                filled: true,
                prefixIcon: Icon(
                  Icons.email,
                  color: Colors.grey.shade600,
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.green)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.green))),
            onChanged: (value) {
              print(value);
            },
          )
        ],
      ),
    );
  }
}
