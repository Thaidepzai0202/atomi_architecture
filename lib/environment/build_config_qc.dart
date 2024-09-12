// import 'package:injectable/injectable.dart';

import 'build_config.dart';

// @Injectable(as: BuildConfig, env: [CustomEnv.qc])
class BuildConfigQc extends BuildConfig {
  @override
  String get hostWeb => '';

  @override
  String get host =>
      'https://bfea-123-16-13-73.ngrok-free.app/api/';

  @override
  String get hostSocketIO => '';
}
