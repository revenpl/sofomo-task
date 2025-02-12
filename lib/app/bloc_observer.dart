import 'dart:developer';

import 'package:bloc/bloc.dart';

class SofomoBlocObserver extends BlocObserver {
  const SofomoBlocObserver();

  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    log('${bloc.runtimeType} $change');
  }
}