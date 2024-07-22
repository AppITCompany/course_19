import 'package:flutter/material.dart';
import 'package:flutter_application_24_capital_game/components/custom_point_label.dart';
import 'package:flutter_application_24_capital_game/home/game_page.dart';
import 'package:flutter_application_24_capital_game/models/point_model.dart';
import 'package:flutter_earth_globe/flutter_earth_globe.dart';
import 'package:flutter_earth_globe/flutter_earth_globe_controller.dart';
import 'package:flutter_earth_globe/globe_coordinates.dart';
import 'package:flutter_earth_globe/point.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final FlutterEarthGlobeController _controller;

  @override
  void initState() {
    _controller = FlutterEarthGlobeController(
      rotationSpeed: 0,
      isBackgroundFollowingSphereRotation: true,
      surface: Image.asset('assets/2k_earth-day.jpg').image,
      background: Image.asset('assets/globe_bg.jpg').image,
    );
    for (var continent in continents) {
      _controller.addPoint(
        Point(
          id: '${continent.id}',
          coordinates: GlobeCoordinates(continent.lat, continent.long),
          label: continent.label,
          isLabelVisible: true,
          style: const PointStyle(color: Colors.red, size: 8),
          labelBuilder: (context, point, isHovering, isVisible) {
            return CustomPointLabel(
              label: continent.label,
              onTap: () => Navigator.push<void>(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => const GamePage(),
                ),
              ),
            );
          },
        ),
      );
    }

    _controller.onLoaded = () {
      _controller.focusOnCoordinates(
        const GlobeCoordinates(-0.736064, 79.626429),
        animate: true,
        duration: const Duration(seconds: 2),
      );
    };

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          FlutterEarthGlobe(
            controller: _controller,
            radius: 100,
          ),
          const Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(top: 100),
              child: Text(
                'Capital Game',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
