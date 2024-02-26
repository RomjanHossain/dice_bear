part of 'dice_bear.dart';

const String _diceBearHost = "api.dicebear.com";
const String _diceBearApiVersion = "5.x";

final Random _random = Random();

extension _DiceBearSpriteExt on DiceBearSprite {
  String get value {
    switch (this) {
      case DiceBearSprite.adventurer:
        return "adventurer";
      case DiceBearSprite.adventurerNeutral:
        return "adventurer-neutral";
      case DiceBearSprite.avataaars:
        return "avataaars";
      case DiceBearSprite.avataaarsNeutral:
        return "avataaars-neutral";
      case DiceBearSprite.bigEars:
        return "big-ears";
      case DiceBearSprite.bigEarsNeutral:
        return "big-ears-neutral";
      case DiceBearSprite.bigSmile:
        return "big-smile";
      case DiceBearSprite.bottts:
        return "bottts";
      case DiceBearSprite.botttsNeutral:
        return "bottts-neutral";
      case DiceBearSprite.croodles:
        return "croodles";
      case DiceBearSprite.croodlesNeutral:
        return "croodles-neutral";
      case DiceBearSprite.funEmoji:
        return "fun-emoji";
      case DiceBearSprite.icons:
        return "icons";
      case DiceBearSprite.identicon:
        return "identicon";
      case DiceBearSprite.initials:
        return "initials";
      case DiceBearSprite.lorelei:
        return "lorelei";
      case DiceBearSprite.loreleiNeutral:
        return "lorelei-neutral";
      case DiceBearSprite.micah:
        return "micah";
      case DiceBearSprite.miniavs:
        return "miniavs";
      case DiceBearSprite.openPeeps:
        return "open-peeps";
      case DiceBearSprite.personas:
        return "personas";
      case DiceBearSprite.pixelArt:
        return "pixel-art";
      case DiceBearSprite.pixelArtNeutral:
        return "pixel-art-neutral";
      case DiceBearSprite.any:
      default:
        return _randomDiceBearSprite().value;
    }
  }
}

extension _ColorX on Color {
  String toHexTriplet() =>
      '#${(value & 0xFFFFFF).toRadixString(16).padLeft(6, '0').toUpperCase()}';
}

DiceBearSprite _randomDiceBearSprite() {
  DiceBearSprite sprite = DiceBearSprite
      .values[_random.nextInt(DiceBearSprite.values.length - 1) + 1];

  switch (sprite) {
    case DiceBearSprite.initials:
      // ... Add more deprecations
      return _randomDiceBearSprite();
    default:
      return sprite;
  }
}

String _randomString({int length = 200}) {
  const chars =
      'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
  final random = Random();
  return String.fromCharCodes(
    Iterable.generate(
        length, (_) => chars.codeUnitAt(random.nextInt(chars.length))),
  );
}
