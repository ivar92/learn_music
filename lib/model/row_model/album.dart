import 'package:learn_music/model/row_model/artist.dart';
import 'package:learn_music/model/row_model/song.dart';

class Album{
  String title;
  Artist artist;
  List<Song> songs;

  Album({
    required this.artist, required this.title, required this.songs
});
}