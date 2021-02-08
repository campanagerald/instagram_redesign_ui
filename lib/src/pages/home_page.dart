import 'package:flutter/material.dart';

import '../../models/post.dart';
import '../../models/story.dart';
import '../../models/user.dart';
import '../widgets/explore_search_bar.dart';
import '../widgets/story_panel.dart';
import '../widgets/timeline_item.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Story> stories = [
    Story(
      user: User(
        name: 'Willard Simpson',
        image: 'https://randomuser.me/api/portraits/men/38.jpg',
      ),
      canCreateStory: true,
    ),
    Story(
      user: User(
        name: 'Marilaine Pinto',
        image: 'https://randomuser.me/api/portraits/women/80.jpg',
      ),
    ),
    Story(
      user: User(
        name: 'Sara King',
        image: 'https://randomuser.me/api/portraits/women/30.jpg',
      ),
    ),
    Story(
      user: User(
        name: 'Tim Fernandez',
        image: 'https://randomuser.me/api/portraits/men/8.jpg',
      ),
    ),
    Story(
      user: User(
        name: 'Urban Morin',
        image: 'https://randomuser.me/api/portraits/men/44.jpg',
      ),
    ),
    Story(
      user: User(
        name: 'Delphine Slawa',
        image: 'https://randomuser.me/api/portraits/women/10.jpg',
      ),
    ),
    Story(
      user: User(
        name: 'Amber Smith',
        image: 'https://randomuser.me/api/portraits/women/33.jpg',
      ),
    ),
  ];

  final List<Post> posts = [
    Post(
      user: User(
        name: 'Willard Simpson',
        image: 'https://randomuser.me/api/portraits/men/38.jpg',
      ),
      images: [
        'https://images.unsplash.com/photo-1489533119213-66a5cd877091?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=751&q=80',
        'https://images.unsplash.com/photo-1483058712412-4245e9b90334?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=750&q=80',
        'https://images.unsplash.com/photo-1432888622747-4eb9a8efeb07?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=753&q=80'
      ],
      likes: 4558,
      createdAt: DateTime(2021, 02, 07, 16, 30),
      caption:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla turpis mauris, ornare sed tellus eu, tempus auctor ante. Cras aliquet, metus faucibus condimentum viverra, ligula ex auctor velit, ac varius odio orci id augue. Etiam a varius leo, sit amet dignissim tortor.',
    ),
    Post(
      user: User(
        name: 'Sara King',
        image: 'https://randomuser.me/api/portraits/women/30.jpg',
      ),
      images: [
        'https://images.unsplash.com/photo-1593642634315-48f5414c3ad9?ixid=MXwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80',
        'https://images.unsplash.com/photo-1593642532454-e138e28a63f4?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80',
      ],
      likes: 4558,
      createdAt: DateTime(2021, 02, 07, 16, 30),
      caption:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla turpis mauris, ornare sed tellus eu, tempus auctor ante. Cras aliquet, metus faucibus condimentum viverra, ligula ex auctor velit, ac varius odio orci id augue. Etiam a varius leo, sit amet dignissim tortor.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        StoryPanel(stories: stories),
        SizedBox(height: 30),
        ExploreSearchBar(),
        SizedBox(height: 30),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: ListView.builder(
              itemCount: posts.length,
              itemBuilder: (_, index) {
                final post = posts[index];

                return Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  child: TimelineItem(
                    post: post,
                  ),
                );
              },
            ),
          ),
        )
      ],
    );
  }
}
