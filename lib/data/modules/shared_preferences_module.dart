import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class SharedPreferencesModule {
  @singleton
  SharedPreferencesAsync get sharedPreferences {
    WidgetsFlutterBinding.ensureInitialized();
    return SharedPreferencesAsync();
  }
}
