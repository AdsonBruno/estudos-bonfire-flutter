import 'package:bonfire/bonfire.dart';
import 'package:flutter/material.dart';
import 'package:game_island/hero.dart';

const double tileSize = 16;
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Game Island',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BonfireTiledWidget(
      joystick: Joystick(
        directional: JoystickDirectional(
          color: Colors.black54,
        ),
      ),
      map: TiledWorldMap(
        'map/island.tmj',
      ),
      player: GameHero(
        Vector2(18 * tileSize, 14 * tileSize),
      ),
      cameraConfig: CameraConfig(
        moveOnlyMapArea: true,
        zoom: 2.5,
        sizeMovementWindow: Vector2(
          tileSize * 3,
          tileSize * 3,
        ),
      ),
    );
  }
}
