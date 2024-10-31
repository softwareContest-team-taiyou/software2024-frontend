import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/domain/box/box.dart';
import 'package:flutter_template/usecase/box/box_usecase.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _animationValue;
  CoinStatus _currentStatus = CoinStatus.cameramode;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );

    _animationValue = Tween(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeIn,
      ),
    )..addListener(() {
        if (_animationValue.value >= 0.5 && _currentStatus == CoinStatus.cameramode) {
          setState(() {
            _currentStatus = CoinStatus.boxmode;
          });
        } else if (_animationValue.value < 0.5 && _currentStatus == CoinStatus.boxmode) {
          setState(() {
            _currentStatus = CoinStatus.cameramode;
          });
        }
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void toggleLock(Box box) {
    if (box.isLock) {
      ref.read(unlockUseCaseProvider);
    } else {
      ref.read(lockUseCaseProvider);
    }
  }

  @override
  Widget build(BuildContext context) {
    final boxState = ref.watch(isLockUseCaseProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ホーム画面',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color(0xFFF7F7F7),
          ),
        ),
        backgroundColor: const Color(0xFF38A5C6),
      ),
      body: Column(
        children: [
          boxState.when(
            data: (box) => Container(
              width: double.infinity,            
              color: Colors.green,
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    box.isLock ? Icons.lock : Icons.lock_open, // Locked時とUnlocked時でアイコンを切り替え
                    color: Colors.white,
                    size: 24,
                  ),
                  const SizedBox(width: 8.0), // アイコンとテキスト間のスペース
                  Text(
                    box.isLock ? '閉まっています' : '開いています',
                    style: const TextStyle(fontSize: 24, color: Colors.white),
                  ),
                ],
              ),
            ),
            loading: () => const CircularProgressIndicator(),
            error: (error, stack) => Text(
              'エラー: $error',
              style: const TextStyle(fontSize: 16),
            ),
          ),
          Expanded(
            child: Center(
              child: GestureDetector(
                onTap: () {
                  if (!_controller.isAnimating) {
                    boxState.when(
                      data: (box) {
                        toggleLock(box);
                        if (_controller.status == AnimationStatus.completed) {
                          _controller.reverse();
                        } else if (_controller.status == AnimationStatus.dismissed) {
                          _controller.forward();
                        }
                      },
                      loading: () {},
                      error: (error, stack) {},
                    );
                  }
                },
                child: AnimatedBuilder(
                  animation: _controller,
                  builder: (context, child) {
                    return Transform(
                      alignment: FractionalOffset.center,
                      transform: Matrix4.identity()
                        ..setEntry(3, 2, 0.0015)
                        ..rotateY(math.pi * _animationValue.value),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Transform(
                            alignment: FractionalOffset.center,
                            transform: Matrix4.identity()
                              ..rotateY(_animationValue.value >= 0.5 ? math.pi : 0),
                            child: _currentStatus == CoinStatus.cameramode
                                ? Image.asset(
                                    'assets/images/locked.png',
                                    height: 256,
                                    width: 256,
                                  )
                                : Image.asset(
                                    'assets/images/unlocked.png',
                                    height: 256,
                                    width: 256,
                                  ),
                          ),
                          boxState.when(
                            data: (box) => Transform(
                              alignment: FractionalOffset.center,
                              transform: Matrix4.identity()
                                ..rotateY(_animationValue.value >= 0.5 ? math.pi : 0),
                            ),
                            loading: () => const CircularProgressIndicator(),
                            error: (error, stack) => Text(
                              'エラー: $error',
                              style: const TextStyle(fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// コインの状態
enum CoinStatus {
  cameramode,
  boxmode,
}
