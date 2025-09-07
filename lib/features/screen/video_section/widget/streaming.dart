import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Streaming extends StatefulWidget {
  const Streaming({super.key});

  @override
  State<Streaming> createState() => _StreamingState();
}

class _StreamingState extends State<Streaming> {
 late VideoPlayerController _controller;
  bool isStart = false;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.networkUrl(
        Uri.parse(
          'https://live-cdn.ch7.com/out/v1/eafeb02c55b64a15b278b1e66c7fc776/playlist_13.m3u8',
        ),
      )
      ..initialize().then((_) {
        setState(() {});
        _controller.play();
        _controller.setLooping(true);
        isStart = true;
      });
  }

   @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _controller.value.isInitialized
        ? Stack(
          children: [
            AspectRatio(
              aspectRatio: _controller.value.aspectRatio,
              child: VideoPlayer(_controller),
            ),
            Positioned.fill(
              child: Align(
                alignment: Alignment.bottomRight,
                child: IconButton(
                  onPressed: () {
                    if (isStart) {
                      _controller.pause();
                      _controller.setLooping(false);
                    } else {
                      _controller.play();
                      _controller.setLooping(true);
                    }
                    setState(() {
                      isStart = !isStart;
                    });
                  },
                  icon: Icon(
                    isStart ? Icons.pause : Icons.play_arrow,
                    color: Colors.white,
                    size: 32,
                  ),
                ),
              ),
            ),
          ],
        )
        : Container();
  }
}
