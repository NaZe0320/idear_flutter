import 'package:idear/app/enums/personality.dart';
import 'package:idear/app/enums/polite.dart';
import 'package:idear/app/model/model_profile.dart';

class MockProfile {
  List<Profile> list = [];
  Future<bool> success = Future(() => false);

  Future<List<Profile>> getProfileList() async {
    list = [
      Profile(
          id: 1,
          imageId: 1,
          personality: Personality.cute,
          polite: Polite.private,
          mbti: ['I', 'S', 'T', 'J']),
      Profile(
          id: 2,
          imageId: 15,
          personality: Personality.friendly,
          polite: Polite.public,
          mbti: ['E', 'N', 'F', 'P']),
      Profile(
          id: 3,
          imageId: 4,
          personality: Personality.neat,
          polite: Polite.public,
          mbti: ['I', 'S', 'T', 'J']),
      Profile(
          id: 4,
          imageId: 12,
          personality: Personality.coldHearted,
          polite: Polite.private,
          mbti: ['E', 'S', 'T', 'P']),
      Profile(
          id: 5,
          imageId: 7,
          personality: Personality.sophisticated,
          polite: Polite.private,
          mbti: ['E', 'N', 'F', 'J']),
    ];
    return list;
  }

  Future<List<Profile>> createProfile(Profile newProfile) async {
    list.add(newProfile);

    return list;
  }

  Future<List<Profile>> updateProfile(Profile newProfile) async {
    print("여기 와?");
    list[list.indexWhere((profile) => profile.id == newProfile.id)] =
        newProfile;
    return list;
  }

  Future<List<Profile>> deleteProfile(int id) async {
    list.removeWhere((profile) => profile.id == id);

    return list;
  }
}
