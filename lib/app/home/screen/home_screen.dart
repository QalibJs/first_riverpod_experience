import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../constants/app_sized_box.dart';
import '../../constants/app_text_style.dart';
import '../widgets/home_button_widget.dart';
import '../../riverpod/home_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var value = ref.watch(HomeRiverPod.counterProvider);
    var text = ref.watch(HomeRiverPod.topTextProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text(text),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "$value",
            style: AppTextStyle.fSize22,
          ),
          AppSizedBox.h40,
          const HomeButtonWidget(),
        ],
      ),
    );
  }
}
