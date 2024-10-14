import 'package:adpative_dashboard_flutter/widgets/custom_drawer.dart';
import 'package:flutter/cupertino.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),

      ],
    );
  }
}
