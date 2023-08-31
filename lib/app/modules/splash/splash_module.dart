import 'package:flutter_challenge_guarani/app/core/commons/button_animation.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'presentation/splash_page.dart';

class SplashModule extends Module {
  @override
  final List<Bind> binds = [
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const SplashPage()),
  ];
}