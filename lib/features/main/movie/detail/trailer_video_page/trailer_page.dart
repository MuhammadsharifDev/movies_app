import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class TrailerPage extends StatefulWidget {
  const TrailerPage({super.key});

  @override
  State<TrailerPage> createState() => _TrailerPageState();
}

class _TrailerPageState extends State<TrailerPage> {

  final  videoUrl='https://youtu.be/PNTCM7cbrsc?si=JgkChZvy5Yd263ui';

  late YoutubePlayerController   _controller;

  @override
  void initState() {
   final videId=YoutubePlayer.convertUrlToId(videoUrl);
   _controller=YoutubePlayerController(
       initialVideoId: videId!,
     flags: YoutubePlayerFlags(
       autoPlay: false,
     ),
   );
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
       appBar: AppBar(
         title: Text('Video Player'),
       ),
      body: Column(
        children: [
          YoutubePlayer(
              controller: _controller,
          showVideoProgressIndicator: true,
          )
        ],
      ),
    );
  }
}
