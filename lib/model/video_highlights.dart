




class VideoHighlights {
  String? title;
  String? subtitle;
  String? url;
  String? sourceUrl;

  VideoHighlights({
    this.title,
    this.subtitle,
    this.url,
    this.sourceUrl
  });

VideoHighlights.fromJson(Map<String, dynamic> json) {
    title = json['title'] as String;
    subtitle = json['subtitle'] as String;
    url = json['url'] as String;
    sourceUrl = json['sourceUrl'] as String;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    data['subtitle'] = subtitle;
    data['url'] = url;
    data['sourceUrl'] = sourceUrl;
    return data;
  }

}
