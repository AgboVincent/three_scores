import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:three_scores_task/controller/api/services/api_service.dart';
import 'package:three_scores_task/model/video_highlights.dart';

part 'video_highlights_event.dart';
part 'video_highlights_state.dart';

class VideoHighlightsBloc extends Bloc<VideoHighlightsEvent, VideoHighlightsState> {
  VideoHighlightsBloc() : super(VideoHighlightsInitial()) {
    on<VideoHighlightsEvent>((event, emit) {
      
    });

    on<WatchHighlightVideoEvent>((event, emit) async {
      emit(VideoHighlightsLoading());

      final data = ApiService();

      final value = await data.fetchHighlightsFromJson(event.filename);

      emit(VideoHighlightsLoaded(VideoHighlights.fromJson(value['data']['highlights'][0])));


    });
  }
}
