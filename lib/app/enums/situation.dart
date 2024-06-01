enum Situation {
  public(
    '공적 텍스트',
    'ic_public_true',
    'ic_public_false',
  ),
  private(
    '사적 텍스트',
    'ic_private_true',
    'ic_private_false',
  );

  const Situation(this.text, this.trueImage, this.falseImage);

  final String text;
  final String trueImage;
  final String falseImage;
}
