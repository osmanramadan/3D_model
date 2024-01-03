import 'package:flutter/material.dart';
import 'package:o3d/o3d.dart';


class BottomNavBar extends StatefulWidget {


  const BottomNavBar({
    Key? key,
    required this.page,
    required this.mainPageController,
    required this.textsPageController,
    required this.o3dController,
  }) : super(key: key);
  
  final int page;
  final PageController mainPageController;
  final PageController textsPageController;
  final O3DController o3dController;
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  late int _currentPage;

  @override
  void initState() {
    super.initState();
    _currentPage = widget.page;
  }

  @override
  Widget build(BuildContext context) {
    return   BottomNavigationBar(
      currentIndex: _currentPage,
      onTap: (page) {
        widget.mainPageController.animateToPage(
          page,
          duration: const Duration(milliseconds: 500),
          curve: Curves.ease,
        );
        widget.textsPageController.animateToPage(
          page,
          duration: const Duration(milliseconds: 500),
          curve: Curves.ease,
        );

        if (page == 0) {
          widget.o3dController.cameraTarget(-0.25, 1.5, 1.5);
          widget.o3dController.cameraOrbit(0, 90, 1);
        } else if (page == 1) {
          widget.o3dController.cameraTarget(0, 1.8, 0);
          widget.o3dController.cameraOrbit(-90, 90, 1.5);
        } else if (page == 2) {
          widget.o3dController.cameraTarget(0, 0, 0);
          widget.o3dController.cameraOrbit(0, 0, 0);
        }

        setState(() {
          _currentPage = page;
        });
      },
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.keyboard_double_arrow_down_outlined),
          label: 'street 1',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.input_rounded),
          label: 'street 2',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.business, size: 30.0),
          label: 'company',
        ),
      ],
    );
  }
}
