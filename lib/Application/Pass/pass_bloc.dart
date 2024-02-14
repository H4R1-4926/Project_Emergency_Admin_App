import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'pass_event.dart';
part 'pass_state.dart';
part 'pass_bloc.freezed.dart';

@injectable
class PassBloc extends Bloc<PassEvent, PassState> {
  PassBloc() : super(PassState.initial()) {
    on<Pressed>((event, emit) {
      emit(const PassState(toggle: false));
    });
    on<Unpressed>((event, emit) {
      emit(const PassState(toggle: true));
    });
  }
}
