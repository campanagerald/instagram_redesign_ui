import 'package:instagram_redesign_ui/models/user.dart';

class Post {
  final User user;
  final List<String> images;
  final String caption;
  final int likes;
  final DateTime createdAt;

  Post({this.user, this.images, this.caption, this.createdAt, this.likes});
}
