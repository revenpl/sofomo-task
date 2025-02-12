import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sofomo/app/bloc_observer.dart';
import 'package:sofomo/app/di.dart';
import 'package:sofomo/app/sofomo_app.dart';

void main() {
  setupDi();
  Bloc.observer = const SofomoBlocObserver();
  runApp(const SofomoApp());
}
