import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocObserverNoteApp implements BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    debugPrint('Change is $change');
  }

  @override
  void onClose(BlocBase bloc) {
    debugPrint('Close is $bloc');
  }

  @override
  void onCreate(BlocBase bloc) {
    debugPrint('Create is $bloc');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {}

  @override
  void onEvent(Bloc bloc, Object? event) {}

  @override
  void onTransition(Bloc bloc, Transition transition) {}
}
