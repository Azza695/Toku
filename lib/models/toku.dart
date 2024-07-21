import 'package:audioplayers/audioplayers.dart';

class Toku {
  final String? image;
  final String japName;
  final String enName;
  final String sound;

  const Toku(
      {this.image,
      required this.japName,
      required this.enName,
      required this.sound});
  playSound(){
    final player = AudioPlayer();
    player.play(AssetSource(sound));
  }
}
