import 'package:adpative_dashboard_flutter/models/drawer_item_model.dart';
import 'package:adpative_dashboard_flutter/utils/app_images/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InActiveDrawerItem extends StatelessWidget {
  const InActiveDrawerItem({
    super.key,
    required this.data,
  });

  final DrawerItemModel data;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(data.image),
      title: Text(
        data.title,
        style: AppStyles.styleMedium16(context),
      ),
    );
  }
}
