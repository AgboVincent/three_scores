import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'incidents_event.dart';
part 'incidents_state.dart';

class IncidentsBloc extends Bloc<IncidentsEvent, IncidentsState> {
  IncidentsBloc() : super(IncidentsInitial()) {
    on<IncidentsEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
