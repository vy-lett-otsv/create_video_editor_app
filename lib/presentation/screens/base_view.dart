import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../configs/locator_config.dart';

abstract class BaseViewModel extends ChangeNotifier {

}

mixin VMState<T extends BaseViewModel> {
  T viewModel = locator<T>();

  Widget createWidget(BuildContext context, T viewModel);

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider<T>.value(
      value: viewModel, child: createWidget(context, viewModel));
}