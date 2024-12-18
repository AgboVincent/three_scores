import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'momentum_event.dart';
part 'momentum_state.dart';

class MomentumBloc extends Bloc<MomentumEvent, MomentumState> {
  MomentumBloc() : super(MomentumInitial()) {
    on<MomentumEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
