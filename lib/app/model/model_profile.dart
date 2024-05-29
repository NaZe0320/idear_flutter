import 'package:idear/app/enums/personality.dart';
import 'package:idear/app/enums/polite.dart';

class Profile {
  final int id;
  int imageId = 1;
  Personality? personality;
  Polite? polite;
  List<String?> mbti = [null, null, null, null];

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
