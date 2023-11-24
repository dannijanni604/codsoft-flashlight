import 'package:codsoft_flashlight/torch_controller.dart';
import 'package:day_night_switcher/day_night_switcher.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  bool isFlashOn = true;
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          title: const Text(
            "Flash Light",
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text("Use button to Turn Light On and Off"),
              DayNightSwitcher(
                  isDarkModeEnabled: isFlashOn,
                  onStateChanged: (val) {
                    setState(() {
                      isFlashOn = val;
                      isDarkMode = !isDarkMode;
                    });

                    isFlashOn ? turnOffFlash(context) : turnOnFlash(context);
                  }),
              const SizedBox(),
              const Text("Developed by M. Adnan Ashraf")
            ],
          ),
        ),
      ),
    );
  }
}
