import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagram_redesign_ui/src/widgets/message_notification.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Row(
        children: [
          SvgPicture.asset(
            'assets/images/instagram-add-button.svg',
            height: 25,
          ),
          Expanded(child: SvgPicture.asset('assets/images/instagram.svg')),
          MessageNotification(),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
