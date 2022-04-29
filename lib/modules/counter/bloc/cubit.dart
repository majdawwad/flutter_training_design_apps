import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_designs/modules/counter/bloc/states.dart';

class CounterCubit extends Cubit<CounterStates> {
  CounterCubit() : super(CounterInitialState());

  int counter = 1;

  static CounterCubit get(context) => BlocProvider.of(context);

  void plus() {
    counter++;
    emit(CounterPlusState(counter));
  }

  void munis() {
    counter--;
    emit(CounterMunisState(counter));
  }
}
