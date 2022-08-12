import 'package:bonfire/bonfire.dart';
import 'package:game_island/game_sprite_sheet.dart';

class GameHero extends SimplePlayer {
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
        );
}
