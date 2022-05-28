class Post {
  late int postID;
  late String name;
  late String date;
  late String content;
  late int like;
  late int dislike;

  Post(
      {required this.postID,
      required this.name,
      required this.date,
      required this.content,
      required this.like,
      required this.dislike});
}
