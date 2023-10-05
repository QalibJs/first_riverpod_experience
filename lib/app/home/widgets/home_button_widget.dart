// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_workout/app/constants/app_text_style.dart';
import 'package:riverpod_workout/app/riverpod/home_riverpod.dart';

class HomeButtonWidget extends ConsumerWidget {
  const HomeButtonWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        FloatingActionButton(
          onPressed: () {
            ref.read(HomeRiverPod.counterProvider.state).state++;
          },
          child: Center(
            child: Text("+", style: AppTextStyle.fSize22),
          ),
        ),
        FloatingActionButton(
          onPressed: () {
            ref.read(HomeRiverPod.counterProvider.state).state--;
          },
          child: Center(
            child: Text("-", style: AppTextStyle.fSize22),
          ),
        ),
      ],
    );
  }
}
