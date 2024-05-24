enum PublicKeyword {
  recommendation('추천서'),
  contentReview('내용 확인'),
  inquiry('문의 사항'),
  condolence('조의'),
  greeting('인사'),
  commercialProposal('상업적 제안서'),
  meetingRequest('면담 요청'),
  consultationRequest('상담 요청'),
  claim('클레임'),
  advice('조언'),
  other('기타');

  const PublicKeyword(this.text);

  final String text;
}
