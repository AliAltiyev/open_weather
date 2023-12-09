import 'dart:ui';

import 'package:flutter/services.dart';
import 'package:open_weather/core_ui/res/dimension.dart';
import 'package:open_weather/export.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: AppColors.black,
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        elevation: Dimensions.size_0,
        backgroundColor: Colors.transparent,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarBrightness: Brightness.dark,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(
          Dimensions.size_40,
          1.2 * kToolbarHeight,
          Dimensions.size_40,
          Dimensions.size_20,
        ),
        child: SizedBox(
          height: size.height,
          child: Stack(
            children: <Widget>[
              AnimatedAlign(
                duration: Durations.extralong1,
                curve: Curves.bounceIn,
                alignment: const AlignmentDirectional(3, -0.2),
                child: Container(
                  height: 200,
                  width: 220,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.deepPurple,
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-3, -0.3),
                child: Container(
                  height: 200,
                  width: 220,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.deepOrangeAccent,
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0, -1.2),
                child: Container(
                  height: 300,
                  decoration: const BoxDecoration(color: Colors.yellow),
                ),
              ),
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 100, sigmaY: 80),
                child: Container(
                    decoration: const BoxDecoration(
                  color: Colors.transparent,
                )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
