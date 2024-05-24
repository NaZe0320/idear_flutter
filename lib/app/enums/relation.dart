enum Relation {
  family('가족'),
  friend('친구'),
  colleague('동료'),
  mentor('스승'),
  lover('연인'),
  acquaintance('지인'),
  disciple('제자'),
  customer('고객'),
  boss('상사'),
  other('기타');

  const Relation(this.text);

  final String text;
}
