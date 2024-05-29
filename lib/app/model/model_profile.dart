import 'package:idear/app/enums/personality.dart';
import 'package:idear/app/enums/polite.dart';

class Profile {
  final int id;
  int imageId;
  Personality personality;
  Polite polite;
  List<bool?> mbti;

  Profile(
      {required this.id,
      required this.imageId,
      required this.personality,
      required this.polite,
      required this.mbti});

  Profile.copy(Profile from)
      : this(
            id: from.id,
            imageId: from.imageId,
            personality: from.personality,
            polite: from.polite,
            mbti: from.mbti);
}
