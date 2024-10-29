import 'dart:async';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'dart:math' as math;



class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3)).then((value) {
      context.go('/login/redirection');
    });
  }

  int _counter = 0;

    void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
      children: [
        Positioned(
          left: 80,   // 左から150ピクセルの位置
          bottom: 300, // 下から300ピクセルの位置
          child: SunAndMoonCoin(
            size: 256,
            callback: (CoinStatus status) {
              if (status == CoinStatus.sun) {
                _incrementCounter();
              }
            },
          ),
        ),
          Positioned(
          left: 100,   // 左から150ピクセルの位置
          bottom: 250, 
            child:Text(
            'Now Loading...',
            style: TextStyle(fontSize: 32, 
            color:Colors.black ,
            fontWeight: FontWeight.bold,),
          ),
          )
      ],
    ),
    );
  }
}

/// コインの状態
enum CoinStatus {
  /// 太陽
  sun,
  /// 月
  moon;
}
/// 太陽と月がそれぞれ表と裏に書かれているコインをイメージして作成しました。
class SunAndMoonCoin extends StatefulWidget {
  const SunAndMoonCoin({
    super.key,
    this.callback,
    this.duration = const Duration(milliseconds: 1000),
    this.initStatus = CoinStatus.sun,
    this.size = 32,
    this.color = Colors.orangeAccent,
  });
  /// 太陽と月が入れ替わるときに実施されるコールバックを設定します
  /// 例：テーマの入れ替え
  final void Function(CoinStatus coinStatus)? callback;
  /// アニメーションの時間
  final Duration duration;
  ///初期状態
  final CoinStatus initStatus;
  /// サイズ
  final double size;
  ///アイコンの色
  final Color color;
  
  @override
  State createState() => _SunAndMoonCoinState();
}
class _SunAndMoonCoinState extends State<SunAndMoonCoin>
    with SingleTickerProviderStateMixin<SunAndMoonCoin> {
  late final sunIcon = Image.asset(
    'assets/images/camera.jpg',
    height: widget.size,
    width: widget.size,
  );

  late final moonIcon = Image.asset(
    'assets/images/treasure.jpg',
    height: widget.size,
    width: widget.size,
  );

  static const startValue = 0.0;
  static const endValue = 1.0;
  static const breakValue = (startValue + endValue) / 2;
  CoinStatus _currentStatus = CoinStatus.sun;

  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: widget.duration,
    value: startValue,
  );

  late final Animation<double> _animationValue = Tween(begin: startValue, end: endValue).animate(
    CurvedAnimation(
      parent: _controller,
      curve: Curves.easeIn,
    ),
  )..addListener(() {
      if (_currentStatus == CoinStatus.sun && _animationValue.value >= breakValue) {
        setState(() {
          _currentStatus = CoinStatus.moon;
        });
        _callback();
      } else if (_currentStatus == CoinStatus.moon && _animationValue.value < breakValue) {
        setState(() {
          _currentStatus = CoinStatus.sun;
        });
        _callback();
      }
    });

  @override
  void initState() {
    super.initState();

    if (widget.initStatus == CoinStatus.moon) {
      _currentStatus = CoinStatus.moon;
      _controller.forward();
    }

    // アニメーションを開始
    _startAnimation();
  }

  /// 1秒間停止してからアニメーションを切り替える
  void _startAnimation() async {
    while (mounted) {
      await _controller.forward();
      if (mounted) await Future.delayed(const Duration(seconds: 1));
      if (!mounted) break;
      
      await _controller.reverse();
      if (mounted) await Future.delayed(const Duration(seconds: 1));
    }
  }

  void _callback() {
    if (widget.callback != null) {
      widget.callback!(_currentStatus);
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Transform(
          alignment: FractionalOffset.center,
          transform: Matrix4.identity()
            ..setEntry(3, 2, 0.0015)
            ..rotateY(math.pi * (1.0 - _animationValue.value)),
          child: _currentStatus == CoinStatus.sun ? sunIcon : moonIcon,
        );
      },
    );
  }
}
