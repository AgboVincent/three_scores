part of 'momentum_bloc.dart';

sealed class MomentumState extends Equatable {
  const MomentumState();
}

final class MomentumInitial extends MomentumState {
  @override
  List<Object> get props => [];
}
