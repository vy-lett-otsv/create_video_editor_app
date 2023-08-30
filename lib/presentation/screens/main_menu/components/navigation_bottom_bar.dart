import 'package:flutter/material.dart';
import 'main_component_wrapper.dart';

class CustomNavBarWidget extends StatelessWidget {
  const CustomNavBarWidget(
      {required this.items,
      required this.selectedIndex,
      required this.onItemSelected,
      Key? key})
      : super(key: key);
  final List<MainNavBottomBarWrapper> items;
  final int? selectedIndex;
  final ValueChanged<int>? onItemSelected;

  @override
  Widget build(BuildContext context) => Container(
        child: Expanded(
          child: SizedBox(
              width: double.infinity,
              height: 56,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: items.map((MainNavBottomBarWrapper item) {
                  final int index = items.indexOf(item);
                  return Flexible(
                      child: GestureDetector(
                    onTap: () {
                      onItemSelected?.call(index);
                    },
                    child: _buildItem(item, selectedIndex == index),
                  ));
                }).toList(),
              )),
        ),
      );

  Widget _buildItem(MainNavBottomBarWrapper item, bool isSelected) => Container(
        alignment: Alignment.center,
        height: 56,
        color: Colors.black,
        child: Stack(
          children: [
            Positioned.fill(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Flexible(
                    child: isSelected
                        ? item.barItem.icon
                        : item.barItem.inactiveIcon ?? item.barItem.icon),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Text(
                    item.barItem.title ?? '',
                    style: TextStyle(
                        color: isSelected
                            ? item.barItem.activeColorPrimary
                            : item.barItem.inactiveColorPrimary,
                        fontWeight: FontWeight.w400,
                        fontSize: 11),
                  ),
                ),
              ],
            ))
          ],
        ),
      );
}
