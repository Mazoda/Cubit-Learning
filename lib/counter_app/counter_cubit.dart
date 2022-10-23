
import 'package:blocapp/counter_app/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  int teamAPoints = 0;
  int teamBPoints = 0;

  CounterCubit() : super(CounterAIncrementState());

  void teamAIncrement(int buttonNum) {
    teamAPoints += buttonNum;
    emit(CounterAIncrementState());
  }

  void teamBIncrement(int buttonNum) {
    teamBPoints += buttonNum;
    emit(CounterBIncrementState());
  }

  void reset() {
    teamAPoints = 0;
    emit(CounterAIncrementState());
    teamBPoints = 0;

    emit(CounterBIncrementState());
  }
}
