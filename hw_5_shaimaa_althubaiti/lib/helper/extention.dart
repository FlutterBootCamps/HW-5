
import 'package:flutter/material.dart';

extension Screen on BuildContext {
  getWidth() {
    return MediaQuery.of(this).size.width;
  }

  getHeight() {
    return MediaQuery.of(this).size.height;
  }

  pushScreen({required Widget view}) {
    return Navigator.of(this)
        .push(MaterialPageRoute(builder: (context) => view));
  }
}