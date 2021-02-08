import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class PopularsGridView extends StatelessWidget {
  const PopularsGridView({
    Key key,
    @required this.populars,
  }) : super(key: key);

  final List<String> populars;

  @override
  Widget build(BuildContext context) {
    return StaggeredGridView.countBuilder(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        shrinkWrap: true,
        itemCount: populars.length + 1,
        staggeredTileBuilder: (int index) =>
            StaggeredTile.count(1, index == 0 ? 0.5 : 1.5),
        itemBuilder: (BuildContext context, int index) {
          if (index == 0) {
            return Center(
              child: Text(
                'Populars',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
            );
          }

          return ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: CachedNetworkImage(
              imageUrl: populars[index - 1],
              fit: BoxFit.cover,
            ),
          );
        });
  }
}
