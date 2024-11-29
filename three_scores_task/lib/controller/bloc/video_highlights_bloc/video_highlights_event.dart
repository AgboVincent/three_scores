part of 'video_highlights_bloc.dart';

sealed class VideoHighlightsEvent extends Equatable {
  const VideoHighlightsEvent();
  @override
  List<Object> get props => [];
}


class WatchHighlightVideoEvent extends VideoHighlightsEvent{
  final String filename;
  const WatchHighlightVideoEvent(this.filename);
}