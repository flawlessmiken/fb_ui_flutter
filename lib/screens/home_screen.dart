import 'package:fb_ui/data/data.dart';
import 'package:fb_ui/widgets/circle_button.dart';
import 'package:fb_ui/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:fb_ui/config/palette.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            brightness: Brightness.light,
            backgroundColor: Colors.white,
            title: Text(
              'FaceBook',
              style: const TextStyle(
                fontSize: 28,
                color: Palette.facebookBlue,
                letterSpacing: -1.2,
                fontWeight: FontWeight.bold,
              ),
            ),
            centerTitle: false,
            floating: true,
            actions: [
              CircleButton(
                icon: Icons.search,
                iconSize: 30.0,
                onPressed: () {print('Circle button search');},
              ),
              CircleButton(
                icon: MdiIcons.facebookMessenger,
                iconSize: 30.0,
                onPressed: () {print('Circle button search');},
              ),
            ],
          ),
          SliverToBoxAdapter(
            child: CreatePostContainer(currentUser:currentUser),
          ),
        ],
      ),
    );
  }
}
