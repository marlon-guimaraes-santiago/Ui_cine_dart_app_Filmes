import 'package:better_player/better_player.dart';
import 'package:flutter/material.dart';

class video extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 80,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: BetterPlayer.network("https://firebasestorage.googleapis.com/v0/b/cine-dart.appspot.com/o/Monster%20Hunter%20_%20Trailer%20Legendado.mp4?alt=media&token=decf187e-6259-4811-a266-e499fee2dbe2",
          ),
        ),
      ),
    );
  }
}



/// caso o primeeiro link não funcione utilize este:
///  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4"