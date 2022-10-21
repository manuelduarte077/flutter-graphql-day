import 'package:flutter/material.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xff393346),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          DrawerHeader(
            child: Column(
              children: const [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://avatars.githubusercontent.com/u/9060523?s=200&v=4',
                  ),
                  radius: 40,
                ),
                SizedBox(height: 10),
                Text(
                  'Noty NDT',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          ItemsMenu(
            title: 'Twitter',
            subtitle: '@manuelduarte077',
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ItemsMenu(
            title: 'Email',
            subtitle: 'carlos.duarte@nerdify.com',
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ItemsMenu(
            title: 'GitHub',
            subtitle: 'github.com/manuelduarte077',
            onTap: () {
              Navigator.pop(context);
            },
          ),
          const Spacer(),
          const Padding(
            padding: EdgeInsets.only(bottom: 50),
            child: Text(
              '@Nerdify 2022',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ItemsMenu extends StatelessWidget {
  const ItemsMenu({
    super.key,
    required this.title,
    required this.subtitle,
    required this.onTap,
  });

  final String title;
  final String subtitle;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
      subtitle: Text(
        subtitle,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w400,
        ),
      ),
      onTap: () => onTap,
    );
  }
}
