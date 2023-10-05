import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeRiverPod {
  HomeRiverPod._();

  static var counterProvider = StateProvider((ref) {
    int value = 0;
    return value;
  });

  static final topTextProvider = StateProvider((ref) {
    String appBarText = "first experience with Riverpod";
    return appBarText;
  });
}
