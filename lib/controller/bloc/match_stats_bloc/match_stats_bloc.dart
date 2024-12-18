import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'match_stats_event.dart';
part 'match_stats_state.dart';

class MatchStatsBloc extends Bloc<MatchStatsEvent, MatchStatsState> {
  MatchStatsBloc() : super(MatchStatsInitial()) {
    on<MatchStatsEvent>((event, emit) {

    });
  }
}
