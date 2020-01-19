import 'package:flutter/material.dart';

class FloatCard extends StatelessWidget {
  final Widget child;

  FloatCard({
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Color(0xffFFFFFF),
        borderRadius: BorderRadius.all(Radius.circular(10)),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.grey[400],
            offset: Offset(0.3, 0.3),
            blurRadius: 4.2,
          ),
        ],
      ),
      child: Container(child: this.child),
    );
  }
}