class Result<I> {
  int pageSize = 0;
  int pageCount = 0;
  String? message;
  I? data;

  Result({
    this.pageSize = 0,
    this.pageCount = 0,
    this.message,
    this.data,
  });
}
