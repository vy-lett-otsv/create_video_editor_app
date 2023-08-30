import 'package:create_video_editor_app/presentation/view_models/main_menu_view_model.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator
  .registerFactory(() => MainMenuViewModel());
}