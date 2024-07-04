import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/responsive/responsive_info.dart';
import 'package:portfolio/screens/sidebar/widgets/side_menu.dart';

class SideHomeScreen extends StatelessWidget {
  const SideHomeScreen({
    Key? key,
    required this.children,
  }) : super(key: key);

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Responsive.isDesktop(context)
          ? null
          : AppBar(
              leading: Builder(
                builder: (context) => IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: const Icon(
                    Icons.menu,
                  ),
                ),
              ),
              backgroundColor: bgColor,
              elevation: 0.0,
            ),
      drawer: const SideMenu(),
      body: Center(
        child: Container(
          constraints: const BoxConstraints(
            maxWidth: maxWidth,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (Responsive.isDesktop(context))
                //**** for side drawer ->
                const Expanded(
                  flex: 2,
                  child: SideMenu(),
                ),

              const SizedBox(
                width: 20.0,
              ),

              //****
              Expanded(
                flex: 7,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ...children,
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
