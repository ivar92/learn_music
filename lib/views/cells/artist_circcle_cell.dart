import 'package:flutter/material.dart';
import 'package:learn_music/model/row_model/artist.dart';

class ArtistCircleCell extends StatelessWidget{

  final double height;
  final Artist artist;

  const ArtistCircleCell({
    Key? key,
    required this.artist,
    required this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: ClipOval(
          child: Image.network(
            artist.urlImage,
            width: height,
            height: height,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  onTap(){

  }
}