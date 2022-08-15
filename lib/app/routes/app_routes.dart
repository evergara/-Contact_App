import 'package:flutter/widgets.dart' show Widget, BuildContext;

import '../splash/splash_screen.dart';
import 'routes.dart';

Map<String, Widget Function(BuildContext)> get appRoutes => {
      Routes.SPLASH: (_) => const SplashScreen(),
    };
