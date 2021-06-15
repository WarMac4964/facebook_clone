import 'package:facebook_ui/data/data.dart';
import 'package:facebook_ui/screens/screens.dart';
import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import '../widgets/widgets.dart';

class NavScreen extends StatefulWidget {
  @override
  _NavScreenState createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  final List<Widget> _screens = [
    HomeScreen(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
  ];

  final List<IconData> _icons = [
    Icons.home,
    Icons.ondemand_video,
    MdiIcons.accountCircleOutline,
    MdiIcons.accountGroupOutline,
    MdiIcons.bellOutline,
    Icons.menu,
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: _icons.length,
      child: Scaffold(
        appBar: Responsive.isDesktop(context)
            ? PreferredSize(
                child: CustomAppBar(
                  currentUser: currentUser,
                  icons: _icons,
                  selectedIndex: selectedIndex,
                  onTap: (index) => setState(() => selectedIndex = index),
                ),
                preferredSize: Size(size.width, 100.0))
            : null,
        body: IndexedStack(
          index: selectedIndex,
          children: _screens,
        ),
        bottomNavigationBar: Responsive.isDesktop(context)
            ? const SizedBox.shrink()
            : Padding(
                padding: const EdgeInsets.only(bottom: 12.0),
                child: CustomTabBar(
                  icons: _icons,
                  selectedIndex: selectedIndex,
                  onTap: (index) => setState(() => selectedIndex = index),
                ),
              ),
      ),
    );
  }
}
