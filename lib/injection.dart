import 'package:bmatch/injection.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;
Environm environment = Environm.dev;

@InjectableInit(
  initializerName: r'$initGetIt', // default
  preferRelativeImports: true, // default
  asExtension: false, // default
)
Future<GetIt> configureDependencies({required Environm env}) async {
  environment = env;
  late String stringEnv;
  switch (env) {
    case Environm.dev:
      stringEnv = 'dev';
      break;
    case Environm.prod:
      stringEnv = 'prod';
      break;
    case Environm.qa:
      stringEnv = 'test';
      break;
  }
  return $initGetIt(getIt, environment: stringEnv);
}

//TODO renamed?
enum Environm {
  dev,
  prod,
  qa,
}