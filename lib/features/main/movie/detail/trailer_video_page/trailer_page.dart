import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class TrailerPage extends StatefulWidget {
   TrailerPage({super.key,required this.videoUrl});
 late String videoUrl;
  @override
  State<TrailerPage> createState() => _TrailerPageState();
}

class _TrailerPageState extends State<TrailerPage> {


  late YoutubePlayerController   _controller;

  @override
  void initState() {
   final videId=YoutubePlayer.convertUrlToId(widget.videoUrl);
   _controller=YoutubePlayerController(
       initialVideoId: videId??'https://youtu.be/PNTCM7cbrsc?si=JdD0n4Z97RuliRav',
     flags: const YoutubePlayerFlags(
       autoPlay: false,
     ),
   );
    super.initState();
  }
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
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
