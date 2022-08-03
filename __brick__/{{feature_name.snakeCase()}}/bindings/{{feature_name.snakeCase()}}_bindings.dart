import 'package:get/get.dart';

import '../pick_list_controller.dart';

class PickListBindings extends Binding {
  @override
  List<Bind> dependencies() => [
        Bind.lazyPut(PickListController.new),
      ];
}
