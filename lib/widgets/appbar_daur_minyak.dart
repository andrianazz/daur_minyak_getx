import 'package:daur_minyak_getx/misc/constants.dart';
import 'package:flutter/material.dart';

class AppBarDaurMinyak extends StatelessWidget {
  final String title;
  const AppBarDaurMinyak({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: Colors.white,
        ),
      ),
      centerTitle: true,
      automaticallyImplyLeading: true,
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back_rounded,
          color: Colors.white,
        ),
        onPressed: () => Navigator.pop(context),
      ),
      backgroundColor: primaryColor,
    );
  }
}
