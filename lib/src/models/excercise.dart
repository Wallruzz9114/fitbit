class Exercise {
  Exercise({this.id, this.title, this.thumbnail, this.gif, this.seconds});

  Exercise.fromJson(dynamic data)
      : id = data['id'] as String,
        title = data['title'] as String,
        thumbnail = data['thumbnail'] as String,
        gif = data['gif'] as String,
        seconds = data['seconds'] as String;

  String id;
  String title;
  String thumbnail;
  String gif;
  String seconds;

  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'title': title,
        'thumbnail': thumbnail,
        'gif': gif,
        'seconds': seconds
      };
}
