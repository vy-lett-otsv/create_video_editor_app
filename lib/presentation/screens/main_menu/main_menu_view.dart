import 'package:create_video_editor_app/presentation/screens/main_menu/components/navigation_bottom_bar.dart';
import 'package:create_video_editor_app/presentation/view_models/main_menu_view_model.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import '../base_view.dart';

class MainMenuView extends StatefulWidget {
  const MainMenuView({Key? key}) : super(key: key);

  @override
  State<MainMenuView> createState() => _MainMenuViewState();
}

class _MainMenuViewState extends State<MainMenuView> with VMState<MainMenuViewModel>{
  @override
  Widget createWidget(BuildContext context, MainMenuViewModel viewModel) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Image.asset('assets/images/icon_queen.png'),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.tv,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.tv,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.tv,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.tv,
                color: Colors.white,
              ))
        ],
      ),
      body: PersistentTabView.custom(
        context,
        controller: viewModel.controller,
        customWidget: CustomNavBarWidget(
          items: viewModel.getPage(),
          selectedIndex: viewModel.controller.index,
          onItemSelected: (int _) {
            setState(() {
              viewModel.controller.index = _;
              viewModel.controller.jumpToTab(viewModel.controller.index);
            });
          },
        ),
        itemCount: 4,
        screens: viewModel.pages(),
        onWillPop: (_) {
          return Future<bool>.value(true);
        },
      ),
    );
  }
  
}
