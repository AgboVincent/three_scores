part of 'match_stats_bloc.dart';

sealed class MatchStatsState extends Equatable {
  const MatchStatsState();
}

final class MatchStatsInitial extends MatchStatsState {
  @override
  List<Object> get props => [];
}
