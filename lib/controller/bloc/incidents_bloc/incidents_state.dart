part of 'incidents_bloc.dart';

sealed class IncidentsState extends Equatable {
  const IncidentsState();
}

final class IncidentsInitial extends IncidentsState {
  @override
  List<Object> get props => [];
}
