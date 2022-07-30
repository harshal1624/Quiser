import 'package:flutter/material.dart';
//import 'package:flutter/material.dart';

class bgForAll extends StatelessWidget {
  final Widget child;

  const bgForAll({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/images/top1.png"),fit: BoxFit.cover)
            ),
          ),
          child,
        ],
      ),
    );
  }
}