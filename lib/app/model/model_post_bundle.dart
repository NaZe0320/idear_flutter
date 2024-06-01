import 'package:idear/app/enums/private_keyword.dart';
import 'package:idear/app/enums/public_keyword.dart';
import 'package:idear/app/enums/relation.dart';
import 'package:idear/app/enums/situation.dart';
import 'package:idear/app/model/model_post.dart';
import 'package:idear/app/model/model_profile.dart';

class PostBundle {
  final int? id;
  Situation? situation;
  Relation? relation;
  PrivateKeyword? privateKeyword;
  PublicKeyword? publicKeyword;
  String? additional;
  Profile? profile;
  String? createAt;
  List<Post>? posts;

  PostBundle({this.id, this.profile, this.createAt, this.posts});

  PostBundle.create({
    this.id,
  });
}
