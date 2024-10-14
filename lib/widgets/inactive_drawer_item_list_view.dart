import 'package:adpative_dashboard_flutter/widgets/active_drawer_item.dart';
import 'package:flutter/material.dart';

import '../models/drawer_item_model.dart';
import 'drawer_item.dart';
class DrawerItemListView extends StatefulWidget {
  DrawerItemListView({
    super.key,
    required this.list,
  });

  final List<DrawerItemModel> list;


  @override
  State<DrawerItemListView> createState() => _DrawerItemListViewState();
}

class _DrawerItemListViewState extends State<DrawerItemListView> {
  int activeItemIndex = 0;
  bool shrinkWrap = true;
  NeverScrollableScrollPhysics physics = NeverScrollableScrollPhysics();
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(

      itemCount: widget.list.length,
      itemBuilder: (context, index){
        return Padding(
          padding: const EdgeInsets.only(top:20),
          child: GestureDetector(
            onTap: () {
              setState(() {
                activeItemIndex = index;
              });
            },
            child: activeItemIndex == index ? ActiveDrawerItem(data: widget.list[index]):InActiveDrawerItem(data: widget.list[index]),
            ),
        );
      },
    );
  }
}