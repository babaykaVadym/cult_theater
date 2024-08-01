import 'package:flutter/material.dart';
import 'package:progress_loader_overlay/progress_loader_overlay.dart';

mixin ScreenUtils {
  Future<void> handleProgress(bool enable, BuildContext context) async {
    if (enable && !ProgressLoader().isLoading) {
      await ProgressLoader().show(context);
    } else if (!enable && ProgressLoader().isLoading) {
      await ProgressLoader().dismiss();
    }
  }
}
