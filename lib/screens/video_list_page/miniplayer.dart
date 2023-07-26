import 'package:flutter/material.dart';

class Miniplayer extends StatefulWidget {
  final double minHeight;
  final double maxHeight;
  final Widget Function(double height, double percentage) builder;

  Miniplayer({
    required this.minHeight,
    required this.maxHeight,
    required this.builder,
  });

  @override
  _MiniplayerState createState() => _MiniplayerState();
}

class _MiniplayerState extends State<Miniplayer> {
  double _currentHeight = 0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onVerticalDragUpdate: _handleDragUpdate,
      onVerticalDragEnd: _handleDragEnd,
      child: Container(
        height: _currentHeight,
        child: widget.builder(_currentHeight, _currentHeight / widget.maxHeight),
      ),
    );
  }

  void _handleDragUpdate(DragUpdateDetails details) {
    setState(() {
      _currentHeight = (_currentHeight - details.delta.dy)
          .clamp(widget.minHeight, widget.maxHeight);
    });
  }

  void _handleDragEnd(DragEndDetails details) {
    // Eğer yükseklik belirli bir eşik değerinin altındaysa min yüksekliğe geri dönecek
    if (_currentHeight < (widget.maxHeight + widget.minHeight) / 2) {
      setState(() {
        _currentHeight = widget.minHeight;
      });
    } else {
      // Eğer yükseklik belirli bir eşik değerinin üzerindeyse max yüksekliğe geri dönecek
      setState(() {
        _currentHeight = widget.maxHeight;
      });
    }
  }
}