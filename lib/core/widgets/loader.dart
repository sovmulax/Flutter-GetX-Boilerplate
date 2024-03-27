import 'package:flutter/material.dart';
import 'package:flutter_overlay_loader/flutter_overlay_loader.dart';

void load(BuildContext context, bool t) {
  Loader.show(context,
      isSafeAreaOverlay: true,
      isAppbarOverlay: true,
      isBottomBarOverlay: true,
      overlayColor: t ? Colors.white.withOpacity(.65) : Colors.transparent,
      progressIndicator: const CircularProgressIndicator(
        color: Color(0xFF2e4bd3),
      ));
}

void unload() {
  Loader.hide();
}