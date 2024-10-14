import 'package:adpative_dashboard_flutter/widgets/adaptive_layout_widget.dart';
import 'package:adpative_dashboard_flutter/widgets/dashboard_desktop_layout.dart';
import 'package:flutter/material.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayoutWidget(
        mobileLayout: (context) => MobileLayout(),
        tabletLayout: (context) => MobileLayout(),
        desktopLayout: (context) => DashboardDesktopLayout(),
      ),
    );
  }
}

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
