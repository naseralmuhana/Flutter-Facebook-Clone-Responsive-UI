import 'package:facebook_clone_responsive_ui/config/config.dart';
import 'package:facebook_clone_responsive_ui/models/models.dart';
import 'package:facebook_clone_responsive_ui/widgets/widgets.dart';
import 'package:flutter/material.dart';

class MoreOptionList extends StatelessWidget {
  final List<List> _moreOptionList = const [
    [MyIcons.shield, Colors.deepPurple, 'COVID-19 Info Center'],
    [MyIcons.group, Colors.cyan, 'Friends'],
    [MyIcons.messenger, Palette.facebookBlue, 'Messenger'],
    [MyIcons.flag, Colors.orange, 'Pages'],
    [MyIcons.store, Palette.facebookBlue, 'Marketplace'],
    [MyIcons.ondemand_video, Palette.facebookBlue, 'Watch'],
    [MyIcons.calendar, Colors.red, 'Events'],
  ];
  final User currentUser;
  const MoreOptionList({
    Key? key,
    required this.currentUser,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 250.0),
      child: ListView.builder(
        itemCount: 1 + _moreOptionList.length,
        itemBuilder: (context, index) {
          if (index == 0) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: UserCard(user: currentUser),
            );
          }

          final List option = _moreOptionList[index - 1];
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: _Option(
              iconData: option[0],
              color: option[1],
              label: option[2],
            ),
          );
        },
      ),
    );
  }
}

class _Option extends StatelessWidget {
  final IconData iconData;
  final Color color;
  final String label;

  const _Option({
    Key? key,
    required this.iconData,
    required this.color,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => print(label),
      child: Row(
        children: [
          Icon(iconData, size: 38, color: color),
          const SizedBox(width: 6.0),
          Flexible(
            child: Text(
              label,
              style: const TextStyle(fontSize: 16.0),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
