// import 'package:audioplayers/audioplayers.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class AudioPlayerWithLocalAsse extends StatefulWidget {
//   const AudioPlayerWithLocalAsse({Key? key}) : super(key: key);
//
//   @override
//   _AudioPlayerWithLocalAsseState createState() =>
//       _AudioPlayerWithLocalAsseState();
// }
//
// class _AudioPlayerWithLocalAsseState extends State<AudioPlayerWithLocalAsse> {
//   AudioPlayer audioPlayer = AudioPlayer();
//   AudioPlayerState audioPlayerState = AudioPlayerState.PAUSED;
//   AudioCache audioCache;
//   String path = 'SoneSePehleKiDua.mp3';
//
//   @override
//   void initState() {
//     super.initState();
//     audioCache = AudioCache(fixedPlayer: audioPlayer);
//     audioPlayer.onPlayerStateChanged.listen((AudioPlayerState s) {
//       setState(() {
//         audioPlayerState = s;
//       });
//     });
//   }
//
//   @override
//   void dispose() {
//     super.dispose();
//     audioPlayer.dispose();
//     audioCache.clearCache();
//   }
//
//   playMusic() async {
//     await audioCache.play(path);
//   }
//
//   pauseMusic() async {
//     await audioPlayer.pause();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return IconButton(
//       iconSize: 50,
//       onPressed: () {
//         audioPlayerState == AudioPlayerState.PLAYING
//             ? pauseMusic()
//             : playMusic();
//       },
//       icon: Icon(audioPlayerState == AudioPlayerState.PLAYING
//           ? Icons.pause_rounded
//           : Icons.play_arrow_rounded),
//     );
//   }
// }
