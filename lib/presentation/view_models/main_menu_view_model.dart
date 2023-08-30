import 'package:create_video_editor_app/presentation/screens/base_view.dart';
import 'package:create_video_editor_app/presentation/screens/create_view.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../../common/enum.dart';
import '../screens/create_video_editor_router.dart';
import '../screens/main_menu/components/main_component_wrapper.dart';

class MainMenuViewModel extends BaseViewModel {

  PersistentTabController controller = PersistentTabController();

  List<Widget> pages() =>
      <Widget>[
        const Text('Mix'),
        const Text('Search'),
        const CreateView(),
        const Text('Me'),
      ];

  List<MainNavBottomBarWrapper> getPage() => [
    MainNavBottomBarWrapper(
        type: NavBottomBarType.mix,
        barItem: PersistentBottomNavBarItem(
            title: 'Mix',
            activeColorPrimary: Colors.white,
            inactiveColorPrimary: Colors.grey,
            inactiveIcon: const Icon(Icons.all_inclusive, color: Colors.grey,),
            icon: const Icon(Icons.all_inclusive, color: Colors.white,))),
    MainNavBottomBarWrapper(
        type: NavBottomBarType.search,
        barItem: PersistentBottomNavBarItem(
            title: 'Search',
            activeColorPrimary: Colors.white,
            inactiveColorPrimary: Colors.grey,
            inactiveIcon: const Icon(Icons.all_inclusive, color: Colors.grey,),
            icon: const Icon(Icons.all_inclusive, color: Colors.white,))),
    MainNavBottomBarWrapper(
        type: NavBottomBarType.create,
        barItem: PersistentBottomNavBarItem(
            title: 'Create',
            activeColorPrimary: Colors.white,
            inactiveColorPrimary: Colors.grey,
            inactiveIcon: const Icon(Icons.add_circle, color: Colors.grey,),
            icon: const Icon(Icons.add_circle, color: Colors.white,))),
    MainNavBottomBarWrapper(
        type: NavBottomBarType.me,
        barItem: PersistentBottomNavBarItem(
            title: 'Me',
            activeColorPrimary: Colors.white,
            inactiveColorPrimary: Colors.grey,
            inactiveIcon: const Icon(Icons.all_inclusive, color: Colors.grey,),
            icon: const Icon(Icons.all_inclusive, color: Colors.white,))),
  ];
}