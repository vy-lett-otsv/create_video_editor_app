import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../../../../common/enum.dart';

class MainNavBottomBarWrapper {
  final NavBottomBarType type;
  final PersistentBottomNavBarItem barItem;

  const MainNavBottomBarWrapper({required this.barItem, required this.type});
}