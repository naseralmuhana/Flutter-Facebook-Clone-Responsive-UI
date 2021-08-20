import 'package:facebook_clone_responsive_ui/config/config.dart';
import 'package:facebook_clone_responsive_ui/models/models.dart';
import 'package:facebook_clone_responsive_ui/widgets/widgets.dart';
import 'package:flutter/material.dart';

class Rooms extends StatelessWidget {
  final List<User> onlineUsers;

  const Rooms({required this.onlineUsers});

  @override
  Widget build(BuildContext context) {
    final bool isDesktop = Responsive.isDesktop(context);
    return Card(
      margin: EdgeInsets.symmetric(horizontal: isDesktop ? 5.0 : 0.0),
      elevation: isDesktop ? 2.0 : 0.0,
      shape: isDesktop ? RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)) : null,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: isDesktop ? BorderRadius.circular(10.0) : null,
          color: Colors.white,
        ),
        height: 60,
        child: ListView.builder(
          padding: const EdgeInsets.symmetric(
            horizontal: 4.0,
            vertical: 10.0,
          ),
          scrollDirection: Axis.horizontal,
          itemCount: 1 + onlineUsers.length,
          itemBuilder: (context, index) {
            // create room button
            if (index == 0) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: _CreateRoomButton(),
              );
            }
            // online user avatar
            final User user = onlineUsers[index - 1];
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: ProfileAvatar(
                imageUrl: user.imageUrl,
                isActive: true,
              ),
            );
          },
        ),
      ),
    );
  }
}

class _CreateRoomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () => print('Create Room'),
      textColor: Palette.facebookBlue,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
        side: BorderSide(
          width: 3.0,
          color: Colors.blueAccent[100]!,
        ),
      ),
      child: Row(
        children: [
          ShaderMask(
            shaderCallback: (Rect bounds) => Palette.createRoomGradient.createShader(bounds),
            child: Icon(
              MyIcons.video_call,
              size: 35,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 4.0),
          Text('Create\nRoom'),
        ],
      ),
    );
  }
}
