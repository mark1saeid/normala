import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit {
  HomeCubit() : super(null);
  int i = 0;

  void increment() => emit(i + 1);
  void decrement() => emit(i - 1);
}
