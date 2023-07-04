  import 'package:flutter/material.dart';

LinearGradient buildLinearGradient() {
    return LinearGradient(
        colors: [
          Colors.indigo,
          Colors.indigo.withOpacity(0.5)
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter
      );
  }