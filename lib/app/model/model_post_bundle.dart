import 'package:idear/app/enums/relation.dart';
import 'package:idear/app/enums/situation.dart';
import 'package:idear/app/model/model_post.dart';
import 'package:idear/app/model/model_profile.dart';

class PostBundle {
  final int? id;
  Situation? situation;
  Relation? relation;
  KeywordType? keyword;
  String? additional;
  Profile? profile;
  String? createAt;
  List<Post>? posts;

  PostBundle({this.id, this.profile, this.createAt, this.posts});

  PostBundle.create({
    this.id,
  });
}

enum KeywordType {
  privateKeyword,
  publicKeyword,
}
