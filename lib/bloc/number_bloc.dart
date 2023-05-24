
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'number_event.dart';

part 'number_state.dart';

class NumberBloc extends Bloc<NumberEvent, NumberState> {
  int number = 0;

  NumberBloc() : super(NumberInitial()) {
    on<PlusEvent>((event, emit) {
      number = number + 1;
      emit(NumberChange(number));
    });
    on<MinusEvent>((event, emit) {
      number = number - 1;
      emit(NumberChange(number));
    });
  }
}
