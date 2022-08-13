import 'package:bonfire/bonfire.dart';
import 'package:game_island/game_sprite_sheet.dart';

class GameHero extends SimplePlayer with ObjectCollision {
  GameHero(Vector2 position)
      : super(
          position: position,
          size: Vector2(42, 42),
          animation: SimpleDirectionAnimation(
            idleLeft: GameSpriteSheet.heroIdLeft,
            idleRight: GameSpriteSheet.heroIdRight,
            runLeft: GameSpriteSheet.heroRunLeft,
            runRight: GameSpriteSheet.heroRunRight,
          ),
          speed: 60,
        ) {
    setupCollision(
      CollisionConfig(
        collisions: [
          CollisionArea.rectangle(
            size: Vector2(20, 20),
            align: Vector2(9, 20),
          ),
        ],
      ),
    );
  }
}
