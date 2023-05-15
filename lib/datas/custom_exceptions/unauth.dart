class UnAuth implements Exception {
  String message;
  UnAuth({this.message = "Yetkisiz Giriş"});
  @override
  String toString() {
    return message;
  }
}
