import 'package:flutter/material.dart';
import 'package:o3d/o3d.dart';
import 'package:ui_3d_flutter/widgets/bottomNavBar.dart';
import 'package:ui_3d_flutter/widgets/firstRoad.dart';
import 'package:ui_3d_flutter/widgets/secondRoad.dart';
import 'package:ui_3d_flutter/widgets/thirdRoad.dart';
import 'package:camera/camera.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  O3DController o3dController = O3DController();
  PageController mainPageController = PageController();
  PageController textsPageController = PageController();
  int page = 0;
  var _isCameraInitialized = false;
  late CameraController _cameraController;
  XFile? _capturedImage;


  @override
  void initState() {
    super.initState();
    _initializeCamera();
  }



  Future<void> _initializeCamera() async {
    final cameras = await availableCameras();
    _cameraController = CameraController(cameras[0], ResolutionPreset.high);

    await _cameraController.initialize();

    if (!mounted) return;

    setState(() {
      _isCameraInitialized = true;
    });
  }



  @override
  void dispose() {
    _cameraController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {


    if (!_isCameraInitialized) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Camera Loading...'),
        ),
        body: const Center(
          child: CircularProgressIndicator(),
        ),
      );
    }


    return Scaffold(
      appBar: AppBar(
        centerTitle:true,
        title: const Text('Streets To Job'),
      ),
      backgroundColor: Colors.blue.shade50,
      body: SafeArea(
        child: Stack(
          children: [
            CameraPreview(_cameraController),
            O3D(
              src: 'assets/man.glb',
              controller: o3dController,
              autoPlay: true,
              autoRotate: false,
              cameraControls: false,
              cameraTarget: CameraTarget(-.100,89, 90.5),
              cameraOrbit: CameraOrbit(0, 90, 80),
            ),
            
            PageView(
              controller: mainPageController,
              children: [
                Container(
                  width: 100,
                  height: double.infinity,
                  margin: const EdgeInsets.all(12),
                  child: PageView(
                    controller: textsPageController,
                    physics: const NeverScrollableScrollPhysics(),
                    children: const [
                      FirstRoad(),
                      SecondRoad(),
                      ThirdRoad()
                    ],
                  )
                )
              ],
            ),
            
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(
        page: page,
        mainPageController: mainPageController,
        textsPageController: textsPageController,
        o3dController: o3dController,
      ),
    );
  }
}
