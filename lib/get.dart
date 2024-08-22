import 'dart:async';

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:pomotask/get.config.dart';

final get = GetIt.instance;

@injectableInit
FutureOr<void> registerDependencies() => get.init();
