import 'package:flutter/material.dart';
import 'package:fort_dibbs_app/app/widgets/resource_widget.dart';
import 'package:fort_dibbs_app/core/data/model/app_exception.dart';
import 'package:get/get.dart';

import '{{feature_name.snake_case()}}_controller.dart';

class {{feature_name.pascalCase()}}Page extends GetView<{{feature_name.pascalCase()}}Controller> {

  static Future? get navigateTo => Get.toNamed('');

  const PickListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: SelectableText('App Bar title'),
      actions: const [
        ProfileIconButton(),
      ],
    ),
    body: Obx(
          () => ResourceWidget(
        resource: controller.state.value,
        onLoading: (_) => _buildLoading(),
        onSuccess: _buildSuccess,
        onError: (error, _) => _buildError(error),
      ),
    ),
  );

  Widget _buildLoading() => const Center(
    child: CircularProgressIndicator(),
  );

  Widget _buildSuccess(dynamic model) => Container();

  Widget _buildError(AppException error) => AppErrorWidget(
    error: error,
    onRetry: () {},
  );
}