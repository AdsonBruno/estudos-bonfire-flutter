import 'package:bonfire/bonfire.dart';
import 'package:game_island/main.dart';
import 'package:game_island/orc_sprite_sheet.dart';

class Orc extends SimpleEnemy with ObjectCollision {
  Orc(Vector2 position)
      : super(
          position: position,
          speed: 40,
          size: Vector2(tileSize, tileSize),
          animation: SimpleDirectionAnimation(
            idleLeft: OrcSpriteSheet.orcIdLeft,
            idleRight: OrcSpriteSheet.orcIdRight,
            runRight: OrcSpriteSheet.orcRunRight,
            runLeft: OrcSpriteSheet.orcRunLeft,
          ),
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
}
