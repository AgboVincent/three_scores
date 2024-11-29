part of 'video_highlights_bloc.dart';

sealed class VideoHighlightsState extends Equatable {
  const VideoHighlightsState();
}

final class VideoHighlightsInitial extends VideoHighlightsState {
  @override
  List<Object> get props => [];
}

final class VideoHighlightsLoading extends VideoHighlightsState {
   @override
  List<Object> get props => [];
}

final class VideoHighlightsLoaded extends VideoHighlightsState {
  final VideoHighlights highlights;

  const VideoHighlightsLoaded(this.highlights);

   @override
  List<Object> get props => [highlights];
}


final class VideoHighlightsError extends VideoHighlightsState {
  final String errMsg;

  const VideoHighlightsError(this.errMsg);

   @override
  List<Object> get props => [errMsg];
}