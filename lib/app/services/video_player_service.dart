import 'package:PadrinhoMED/app/styles/constants.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:video_player/video_player.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class VideoPlayerService extends StatefulWidget {
  final String videoPath;

  const VideoPlayerService({Key key, this.videoPath}) : super(key: key);
  @override
  _VideoPlayerServiceState createState() => _VideoPlayerServiceState(videoPath);
}

class _VideoPlayerServiceState extends State<VideoPlayerService> {
  VideoPlayerController _controller;
  bool isPlay = false;
  final String videoPath;

  _VideoPlayerServiceState(this.videoPath);

  void checkVideo() async{

    if(_controller.value.position == _controller.value.duration){
      isPlay = false;
      setState(() {});
      await _controller.seekTo(Duration.zero);
      _controller.pause();

    }
  }

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(videoPath)..initialize().then((_) => setState(() {}))..addListener(checkVideo);
    print(_controller.value.initialized);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: _controller.value.initialized
              ? Stack(alignment: Alignment.center,
                children: [
                  SizedBox.expand(
                  child: FittedBox(
                      fit: BoxFit.cover,
                      child: SizedBox(
                        width: _controller.value.size?.width ?? 0,
                        height: _controller.value.size?.height ?? 0,
            child: VideoPlayer(_controller)))),
                  Opacity(opacity: isPlay? 0:1,
                    child: MaterialButton(
                      onPressed: () {
                        if(!isPlay){
                          _controller.play();
                          isPlay = true;
                          setState(() {});

                        }else{
                          _controller.pause();
                          isPlay = false;
                          setState(() {});
                        }
                      },
                      color: Colors.white60,
                      textColor: Colors.white,
                      child: Icon(
                        Icons.play_arrow,
                        size: 70,
                      ),
                      padding: EdgeInsets.all(18),
                      shape: CircleBorder(),
                    ),
                  ),
                  Positioned(bottom: 0,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 25),
                      child: Container(
                        width: MediaQuery.of(context).size.width,height: 56,
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width * 0.4,
                                  height: 56,
                                  child: RaisedButton(
                                    color: Colors.white.withOpacity(0.25),
                                    elevation: 0,
                                    textColor: Colors.white,
                                    onPressed: () async {
                                        String url = "http://padrinhomed.com";
                                        await launch(url);

                                    },
                                    shape: StadiumBorder(),
                                    child: FittedBox(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text("MAIS INFO",
                                          style: TextStyle(
                                            fontFamily: "Montserrat Bold",
                                            fontSize: 16,
                                          )),
                                      )))),
                                Container(
                                    width: MediaQuery.of(context).size.width * 0.4,
                                    height: 56,
                                    child: RaisedButton(
                                        color: Colors.white.withOpacity(0.25),
                                        elevation: 0,
                                        textColor: Colors.white,
                                        onPressed: () {
                                          _controller.pause();
                                          isPlay = false;
                                          Modular.to.pushNamed("/Location");
                                        },
                                        shape: StadiumBorder(),
                                        child: FittedBox(
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Text("PULAR",
                                                  style: TextStyle(
                                                    fontFamily: "Montserrat Bold",
                                                    fontSize: 16,
                                                  )),
                                            ))))])),
                    ),
                  )
                ],
              )
              : Container(),
        ));
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}