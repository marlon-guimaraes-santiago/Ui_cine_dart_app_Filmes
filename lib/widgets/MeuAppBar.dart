import 'package:flutter/material.dart';

class MeuAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        width: double.infinity,
        child: Image.asset('assets/appBar.jpg',fit: BoxFit.fill,),
      );
  }
}
