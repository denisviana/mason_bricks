import 'package:fort_dibbs_app/core/data/model/resource.dart';
import 'package:get/get.dart';

import 'adapter/${{feature_name.snakeCase}}_adapter.dart';
import 'view_model/$${{feature_name.snakeCase}}_view_model.dart';

class {{feature_name.camelCase}}Controller extends GetxController {
  //region Private
  //endregion

  //region Public
  final state = const Resource<{{feature_name.camelCase}}ViewModel>.loading().obs;

//endregion

//region Functions

//endregion
}
