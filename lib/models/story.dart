import 'package:instagram_redesign_ui/models/user.dart';

class Story {
  final User user;
  final bool canCreateStory;

  Story({this.user, this.canCreateStory = false});
}
