class CustEx implements Exception {
  String message;
  CustEx({this.message = "Bir Hata Oluştu"});
  @override
  String toString() {
    return message;
  }
}
