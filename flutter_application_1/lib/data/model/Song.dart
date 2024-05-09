/*
{
            "id": "1121429554",
            "title": "Chạy Về Khóc Với Anh",
            "album": "Chạy Về Khóc Với Anh(Single)",
            "artist": "ERIK",
            "source": "https://thantrieu.com/resources/music/1121429554.mp3",
            "image": "https://thantrieu.com/resources/arts/1121429554.webp",
            "duration": 224
        },
*/
// ignore: unused_import
import 'package:flutter/foundation.dart';
// ignore: unused_import
import 'package:flutter/material.dart';

class Song {
  Song(
      {required this.id,
      required this.title,
      required this.album,
      required this.artist,
      required this.duration,
      required this.image,
      required this.source});

  factory Song.fromJson(Map<String, dynamic> map) {
    return Song(
      id: map['id'],
      title: map['title'],
      album: map['album'],
      artist: map['artist'],
      source: map['source'],
      image: map['image'],
      duration: map['duration'],
    );
  }

  String id;
  String title;
  String album;
  String artist;
  String source;
  String image;
  int duration;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Song && runtimeType == other.runtimeType && album == other.album;

  @override
  int get hashCode => album.hashCode;

  @override
  String toString() {
    return 'Song{id: $id, title: $title, album: $album, artist: $artist, source: $source, image: $image, duration: $duration}';
  }
}
