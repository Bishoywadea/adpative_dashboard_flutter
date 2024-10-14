import 'package:adpative_dashboard_flutter/models/drawer_item_model.dart';
import 'package:adpative_dashboard_flutter/utils/app_images/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ActiveDrawerItem extends StatelessWidget {
  const ActiveDrawerItem({
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
        style: AppStyles.styleBold16(context),
      ),
      trailing: Container(
        color: const Color(0xFF4EB7F2),
        width: 3.27,
      ),
    );
  }
}
