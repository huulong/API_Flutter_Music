import 'dart:async';

import 'package:flutter_application_1/data/repository/repository.dart';

import '../../data/model/Song.dart';

class MusicAppViewModel {
  StreamController<List<Song>> songStream = StreamController();

  void loadSongs() {
    final repository = DefaultRepostitory();
    repository.loadData().then((value) => songStream.add(value!));
  }
}
