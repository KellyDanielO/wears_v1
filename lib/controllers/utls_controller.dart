import 'package:flutter/material.dart';

import '../helpers/transition.dart';

class UtlControllers {
  moveTo(Widget page, BuildContext context) {
    Navigator.of(context).push(CustomSlideTransition(page: page));
  }
}
