import 'package:flutter/material.dart';
import 'package:learn_music/views/list_container/artist_container.dart';

class MusicView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Divider(),
          //Container pour les artistes
          ArtistContainer(),
          const Divider(),
          //Container pour les albums
          const Divider(),
          //Container pour les genres de musique
        ],
      ),
    );
  }
}