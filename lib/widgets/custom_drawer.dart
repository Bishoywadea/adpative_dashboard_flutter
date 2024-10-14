import 'package:adpative_dashboard_flutter/widgets/drawer_item.dart';
import 'package:adpative_dashboard_flutter/widgets/user_info_list_tile.dart';
import 'package:flutter/material.dart';

import '../models/drawer_item_model.dart';
import '../utils/app_images/app_images.dart';
import 'inactive_drawer_item_list_view.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  static List<DrawerItemModel> list = [
    DrawerItemModel(image: Assets.imagesDashboard, title: 'Dashboard'),
    DrawerItemModel(image: Assets.imagesMyTransctions, title: 'My Transaction'),
    DrawerItemModel(image: Assets.imagesStatistics, title: 'Statistics'),
    DrawerItemModel(image: Assets.imagesWalletAccount, title: 'Wallet Account'),
    DrawerItemModel(image: Assets.imagesMyInvestments, title: 'My Investments'),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
                image: Assets.imagesAvatar3,
                title: 'Lekan Okeowo',
                subTitle: 'demo@gmail.com'),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          DrawerItemListView(list: list),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 20,
                  ),
                ),
                InActiveDrawerItem(
                    data: DrawerItemModel(
                  image: Assets.imagesSettings,
                  title: "Setting System",
                )),
                InActiveDrawerItem(
                    data: DrawerItemModel(
                  image: Assets.imagesLogout,
                  title: "Logout account",
                )),
                SizedBox(
                  height: 48,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
