import 'package:flutter/material.dart';

class MyCirCularAvatar extends StatelessWidget {
  const MyCirCularAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: CircleAvatar(
      backgroundImage:
          NetworkImage('https://www.woolha.com/media/2020/03/eevee.png'),
      radius: 100,
      child: Text('Eevee'),
      foregroundColor: Colors.red,
    ));
  }
}
