import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:vector_math/vector_math_64.dart';


class TransitionLogin {

  CustomTransition get transitionLogin {
    return CustomTransition(
      transitionDuration: Duration(seconds: 2),
      transitionBuilder: (context, animation, secondaryAnimation, child) {
        return Transform(
            alignment: FractionalOffset.center,
            transform: Matrix4.diagonal3(Vector3(1.0* animation.value,1.0 * animation.value,1.0 * animation.value)),
          child: child,
        );
      },
    );
  }
}