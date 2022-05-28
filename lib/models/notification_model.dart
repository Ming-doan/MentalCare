class NotificationModel {
  late String title;
  late String date;
  late String imagePath;
  late bool isRead;

  NotificationModel(
      {required this.title,
      required this.date,
      required this.imagePath,
      required this.isRead});
}
