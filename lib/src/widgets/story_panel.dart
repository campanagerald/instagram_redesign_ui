import 'package:flutter/material.dart';
import 'package:instagram_redesign_ui/src/constants.dart';

import '../../models/story.dart';
import 'story_panel_item.dart';

class StoryPanel extends StatelessWidget {
  const StoryPanel({
    Key key,
    @required this.stories,
  }) : super(key: key);

  final List<Story> stories;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: kDefaultPadding),
      child: SizedBox(
        height: 100,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: stories.length,
          itemBuilder: (_, index) {
            final story = stories[index];

            return StoryPanelItem(story: story);
          },
        ),
      ),
    );
  }
}
