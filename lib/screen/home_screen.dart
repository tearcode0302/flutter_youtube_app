import 'package:flutter/material.dart';
import 'package:flutter_youtube_app/component/custom_youtube_player.dart';
import 'package:flutter_youtube_app/model/video_model.dart';
import 'package:flutter_youtube_app/repository/youtube_repository.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('말왕 운동채널'),
        backgroundColor: Colors.black,
      ),
      body: FutureBuilder<List<VideoModel>>(
        future: YoutubeRepository.getVideos(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(
              child: Text(
                snapshot.error.toString(),
              ),
            );
          }

          if(!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }

          return ListView(
            physics: BouncingScrollPhysics(),
            children: snapshot.data!.map((e) => CustomYoutubePlayer(videoModel: e)).toList(),
          );
        },
      )
    );
  }
}
