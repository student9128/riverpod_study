import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_study/ui/themes.dart';
part 'theme_controller.g.dart';
class ThemeNotifier extends AsyncNotifier<String>{
  @override
  FutureOr<String> build() async{
    return await ref.read(themeServiceProvider).initTheme();
  }
  String get currentMode=>state.value??lightMode;

  void toggle(bool isDarkMode) async{
    state = const AsyncValue.loading();
    final mode = isDarkMode?darkMode:lightMode;
    state = await AsyncValue.guard(()async{ref.read(themeServiceProvider).toggleTheme(mode);
    return mode;});
  }
}

@riverpod
class AsyncThemeNotifier extends _$AsyncThemeNotifier{
  @override
  FutureOr<String> build() async{
    return await ref.read(themeServiceProvider).initTheme();
  }
  String get currentMode=>state.value??lightMode;

  void toggle(bool isDarkMode) async{
    state = const AsyncValue.loading();
    final mode = isDarkMode?darkMode:lightMode;
    state = await AsyncValue.guard(()async{ref.read(themeServiceProvider).toggleTheme(mode);
    return mode;});
  }
}
@riverpod
class ThemeColorNotifier extends _$ThemeColorNotifier{
  @override
  Color build(){
    return Colors.purple;
  }
  void selectColor(Color color){
    state = color;
  }
}

class ThemeService{
  late final Box<String> themeBox;
  Future<String> initTheme() async{
    themeBox = await Hive.openBox(themeBoxKey);
    if(themeBox.values.isEmpty)themeBox.add(lightMode);
    return themeBox.values.first;
  }
  Future<void> toggleTheme(String mode) async => await themeBox.put(0, mode);
}
final themeServiceProvider = Provider<ThemeService>((_)=>ThemeService());