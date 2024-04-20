import 'package:flutter/material.dart';
import 'package:task_hyd/shared/app_loader.dart';
import 'package:video_player/video_player.dart';

class ShortsPlayer extends StatefulWidget {
  const ShortsPlayer({super.key});

  @override
  State<ShortsPlayer> createState() => _ShortsPlayerState();
}

class _ShortsPlayerState extends State<ShortsPlayer> {
  final List<String> _shorts = [
    'assets/shorts1.mp4',
    'assets/shorts2.mp4',
    'assets/shorts3.mp4',
    'assets/shorts4.mp4',
    'assets/shorts1.mp4',
  ];

  int _currentIndex = 0;
  late PageController _pageController;
  late VideoPlayerController _videoPlayerController;
  late Future<void> _initializeVideoPlayerFuture;

  Future<void> _initializeVideoPlayer(int index) async {
    _videoPlayerController = VideoPlayerController.asset(_shorts[index]);
    await _videoPlayerController.initialize();
    _videoPlayerController.play();
    _videoPlayerController.setLooping(true);
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentIndex);
    _initializeVideoPlayerFuture = _initializeVideoPlayer(_currentIndex);
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.vertical,
      controller: _pageController,
      itemCount: _shorts.length,
      onPageChanged: (index) {
        _videoPlayerController.dispose();
        setState(() {
          _currentIndex = index;
          _initializeVideoPlayerFuture = _initializeVideoPlayer(index);
        });
      },
      itemBuilder: (context, index) {
        return FutureBuilder(
          future: _initializeVideoPlayerFuture,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return AspectRatio(
                aspectRatio: _videoPlayerController.value.aspectRatio,
                child: GestureDetector(
                  onTap: () {
                    if (_videoPlayerController.value.isPlaying) {
                      _videoPlayerController.pause();
                    } else {
                      _videoPlayerController.play();
                    }
                  },
                  child: VideoPlayer(_videoPlayerController),
                ),
              );
            } else {
              return const AppLoader();
            }
          },
        );
      },
    );
  }
}
