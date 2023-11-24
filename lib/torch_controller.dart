import 'package:flutter/material.dart';

Future<void> turnOnFlash(BuildContext context) async {
  try {
    await TorchLight.enableTorch();
  } on Exception catch (_) {
    showErrorMes('Could not enable Flashlight', context);
  }
}

Future<void> turnOffFlash(BuildContext context) async {
  try {
    await TorchLight.disableTorch();
  } on Exception catch (_) {
    showErrorMes('Could not enable Flashlight', context);
  }
}

void showErrorMes(String mes, BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(mes)));
}
