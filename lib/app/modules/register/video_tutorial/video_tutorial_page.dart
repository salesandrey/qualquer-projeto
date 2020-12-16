import 'package:PadrinhoMED/app/modules/register/register_controller.dart';
import 'package:PadrinhoMED/app/services/video_player_service.dart';
import 'package:PadrinhoMED/app/styles/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class VideoTutorialPage extends StatefulWidget {
  final String videoPath;

  const VideoTutorialPage({Key key, this.videoPath}) : super(key: key);
  @override
  _VideoTutorialPageState createState() => _VideoTutorialPageState(videoPath);
}

class _VideoTutorialPageState extends ModularState<VideoTutorialPage, RegisterController> {

  final String videoPath;

  _VideoTutorialPageState(this.videoPath);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(child: VideoPlayerService(videoPath: videoPath,))
    ]))));
  }
}
