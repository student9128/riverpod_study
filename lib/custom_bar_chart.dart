import 'package:flutter/material.dart';

class BarChart extends StatefulWidget {
  const BarChart({super.key});

  @override
  State<BarChart> createState() => _BarChartState();
}

class _BarChartState extends State<BarChart> with TickerProviderStateMixin {
  double offset = 0.0;
  bool isDrag = false;
  int dataLens = 20;
  double maxScrollX = 0;
  int chartWidth = 300;
  double barWidth = 30;
  double barSpace = 15;
  late AnimationController _scrollXController;
  @override
  void initState() {
    super.initState();
    maxScrollX = (dataLens * barWidth + (dataLens - 1) * barSpace) - chartWidth;
    _scrollXController = AnimationController(
        vsync: this,
        duration: const Duration(milliseconds: 500),
        lowerBound: double.negativeInfinity,
        upperBound: double.infinity);
    _scrollXController.addListener(() {
      offset = _scrollXController.value;
      if (offset <= -maxScrollX) {
        offset = -maxScrollX;
        _stopAnimation();
      } else if (offset >= 0) {
        offset = 0;
        _stopAnimation();
      } else {
        setState(() {});
      }
      debugPrint("offset==$offset,12");
      // setState(() {
        
      // });
    });
  }

  void _stopAnimation() {
    if (_scrollXController.isAnimating) {
      _scrollXController.stop();
      isDrag = false;
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
            onPressed: () {
              setState(() {
                offset += -10;
              });
            },
            child: Text('测试')),
        GestureDetector(
          onHorizontalDragStart: (details) {
            setState(() {
              isDrag = true;
            });
          },
          onHorizontalDragUpdate: (details) {
            if (details.primaryDelta == null) return;
            setState(() {
              // offset += details.primaryDelta!;
              offset = (offset + details.primaryDelta!)
                  .clamp(-maxScrollX, 0)
                  .toDouble();
            debugPrint("offset==$offset, details.primaryDelta=${details.primaryDelta}");
            });
          },
          onHorizontalDragEnd: (details) {
            final Tolerance tolerance = Tolerance(
              velocity: 1.0 /
                  (0.050 * WidgetsBinding.instance!.window.devicePixelRatio),
              // logical pixels per second
              distance: 1.0 /
                  WidgetsBinding
                      .instance!.window.devicePixelRatio, // logical pixels
            );
            if (details.primaryVelocity == null) return;
            ClampingScrollSimulation simulation = ClampingScrollSimulation(
              position: offset,
              velocity: details.primaryVelocity!,
              tolerance: tolerance,
            );
            _scrollXController.animateWith(simulation);
            // setState(() {
            //   isDrag = false;
            // });
          },
          onHorizontalDragCancel: () {
            setState(() {
              isDrag = false;
            });
          },
          child: Container(
            width: 300,
            height: 200,
            color: Colors.amber,
            child: ClipRect(
              child: CustomPaint(
                painter: CustomBarChart(offset: offset, dataLens: 20),
              ),
            ),
          ),
        )
      ],
    );
  }
}

class CustomBarChart extends CustomPainter {
  static const double _mPadding = 0, mPaddingTop = 10;
  late Paint _axisPaint, _barPaint;
  late double startX,
      endX,
      startY,
      endY,
      chartStartX,
      chartEndX,
      chartStartY,
      chartEndY,
      realChartStartX; //图表居中显示的时候实际起始点
  late double _disWidth,
      _disHeight,
      _chartWidth, //图表显示的可用宽度
      _chartHeight,
      _realChartWidth; //图表居中显示的时候实际宽度
  double barWidth = 30;
  double barSpace = 15;
  double offset = 0;
  int dataLens = 0;
  late TextPainter _textPainter;
  CustomBarChart({this.offset = 0, this.dataLens = 0});
  @override
  void paint(Canvas canvas, Size size) {
    _initPaint();
    _initAxisLine(size);
    _drawChart(canvas, size);
  }

  _initPaint() {
    _axisPaint = Paint()
      ..isAntiAlias = true
      ..strokeWidth = 1
      ..color = Colors.red
      ..style = PaintingStyle.stroke;
    _barPaint = Paint()
      ..isAntiAlias = true
      ..strokeWidth = 1
      ..color = Colors.green
      ..style = PaintingStyle.fill;
    _textPainter = TextPainter(textAlign: TextAlign.center, ellipsis: '.')
      ..textDirection = TextDirection.ltr;
  }

  _initAxisLine(Size size) {
    startX = _mPadding;
    endX = size.width - _mPadding;
    startY = size.height - _mPadding;
    endY = _mPadding;
    chartStartX = _mPadding;
    chartEndX = size.width - _mPadding;
    chartStartY = size.height - _mPadding;
    chartEndY = mPaddingTop;
    _disWidth = endX - startX;
    _disHeight = startY - endY;
    _chartWidth = chartStartX - chartEndX;
    _chartHeight = chartStartY - chartEndY;
  }

  _drawChart(Canvas canvas, Size size) {
    if (dataLens == 0) return;
    canvas.translate(offset, 0);
    for (int i = 0; i < dataLens; i++) {
      var _tempBarX = chartStartX + i * barSpace + i * barWidth;
      var _tempX = _tempBarX + barWidth / 2;
      canvas.drawRect(
          Rect.fromLTWH(_tempBarX, startY, barWidth, -100), _barPaint);
      _textPainter.text = TextSpan(text: '$i');
      _textPainter.layout();
      _textPainter.paint(
          canvas, Offset(_tempX - _textPainter.width / 2, chartStartY - 50));
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
