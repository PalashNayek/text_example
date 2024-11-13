import 'package:get_it/get_it.dart';

import '../view_model/text_viewmodel.dart';

final getIt = GetIt.instance;

void setupLocator() {
  getIt.registerLazySingleton<TextViewModel>(() => TextViewModel());
}
