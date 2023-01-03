import 'package:flutter/material.dart';
import 'package:my_app/utils/storage.dart';

class ShareScreen extends StatefulWidget {
  const ShareScreen({super.key});

  @override
  State<ShareScreen> createState() => _ShareScreenState();
}

class _ShareScreenState extends State<ShareScreen> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }

  void me() async {
    var sp = await myStroage();
  }
}
