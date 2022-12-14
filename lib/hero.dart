import 'package:bonfire/bonfire.dart';
import 'package:game_island/player_sprite_sheet.dart';
import 'package:game_island/main.dart';

class GameHero extends SimplePlayer with ObjectCollision {
  GameHero(Vector2 position)
      : super(
          position: position,
          size: Vector2(tileSize, tileSize),
          animation: SimpleDirectionAnimation(
            idleLeft: PlayerSpriteSheet.heroIdLeft,
            idleRight: PlayerSpriteSheet.heroIdRight,
            runLeft: PlayerSpriteSheet.heroRunLeft,
            runRight: PlayerSpriteSheet.heroRunRight,
          ),
          speed: 50,
        ) {
    setupCollision(
      CollisionConfig(
        collisions: [
          CollisionArea.rectangle(
            size: Vector2(8, 5),
            align: Vector2(4, 11),
          ),
        ],
      ),
    );
  }

  @override
  bool onCollision(GameComponent component, bool active) {
    print(component);
    print(active);
    return super.onCollision(component, active);
  }
}
