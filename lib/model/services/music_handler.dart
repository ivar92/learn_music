import 'package:learn_music/model/row_model/album.dart';
import 'package:learn_music/model/row_model/artist.dart';
import 'package:learn_music/model/services/music_datas.dart';

class MusicHandler {
  final datas = MusicDatas();

  List<Artist> allArtists() {
    List<Artist> artists = [];
    final all = datas.allDatas();
    for (var song in all) {
      artists.add(Artist(name: song.artist, urlImage: song.thumb));
      //  if (!artists.contains(song.artist)) {
      // artists.add(song.artist);
      // }
    }
    return artists;
  }

  List<Album> allAlbum() {
    List<Album> albums = [];
    final all = datas.allDatas();
    for (var song in all) {
      final singer = Artist(name: song.artist, urlImage: song.thumb);
      // final albumTitle =;
      Album newAlbum =
          albums.firstWhere((album) => (album.artist.name == singer 
          // && album.title == albumTitle
          ));
    }
    return albums;
  }
}
