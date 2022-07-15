import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learn_music/model/services/music_handler.dart';
import 'package:learn_music/views/cells/artist_circcle_cell.dart';

class ArtistContainer extends StatelessWidget{
 final artists = MusicHandler().allArtists();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(
            "Artistes",
            style: GoogleFonts.signika(fontSize: 20)
          ),
          Container(
            height: 90,
            child: ListView.builder(
              itemCount: artists.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index) => ArtistCircleCell(artist: artists[index], height: 75))
            ),
          )
        ],
      ),
    );
  }
}