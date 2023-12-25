import 'package:get/get.dart';

import '../controllers/daur_minyak_controller.dart';

class DaurMinyakBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DaurMinyakController>(
      () => DaurMinyakController(),
    );
  }
}
