import 'dart:math';

import 'package:bttd/core/layout/default_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ConfirmGameScreen extends HookConsumerWidget {
  static String routeName = 'ConfirmGameScreen';

  const ConfirmGameScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final testList = [1, 2, 3];
    final size = MediaQuery.of(context).size;
    final animaitionCtr = useAnimationController(
      duration: Duration(milliseconds: 240),
      lowerBound: (size.width + 100) * -1,
      upperBound: (size.width + 100),
    );

    final Tween<double> _rotation = Tween(
      begin: -15,
      end: 15,
    );

    final Tween<double> _scale = Tween(
      begin: 0.8,
      end: 1,
    );

    final _index = useState(0);

    void _onHorizontalDragUpdate(DragUpdateDetails details) {
      animaitionCtr.value += details.delta.dx;
    }

    void _whenComplete() {
      animaitionCtr.value = 0;
      _index.value = _index == testList.length ? 0 : _index.value++;
    }

    void _onHorizontalDragEnd(DragEndDetails details) {
      final bound = size.width - 200;
      final dropZone = size.width + 100;
      if (animaitionCtr.value.abs() >= bound) {
        final factor = animaitionCtr.value.isNegative ? -1 : 1;
        animaitionCtr
            .animateTo(
              (dropZone) * factor,
              curve: Curves.easeOut,
            )
            .whenComplete(_whenComplete);
      } else {
        animaitionCtr.animateTo(
          0,
          curve: Curves.easeOut,
        );
      }
    }

    return DefaultLayout(
      title: 'Be The Top Dog',
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 300,
            height: 400,
            child: AnimatedBuilder(
                animation: animaitionCtr,
                builder: (context, child) {
                  final angle = _rotation.transform(
                        (animaitionCtr.value + size.width / 2) / size.width,
                      ) *
                      pi /
                      180;
                  final scale =
                      _scale.transform(animaitionCtr.value.abs() / size.width);

                  return Center(
                    child: Stack(
                      children: [
                        Transform.scale(
                          scale: min(scale, 1.0),
                          child: ConfirmCardWidget(),
                        ),
                        GestureDetector(
                          onHorizontalDragUpdate: _onHorizontalDragUpdate,
                          onHorizontalDragEnd: _onHorizontalDragEnd,
                          child: Transform.translate(
                            offset: Offset(animaitionCtr.value, 0),
                            child: Transform.rotate(
                              angle: angle,
                              child: ConfirmCardWidget(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }),
          ),
          SizedBox(
              height: AppBar().preferredSize.height +
                  MediaQuery.of(context).padding.top),
        ],
      ),
    );
  }
}

class ConfirmCardWidget extends StatelessWidget {
  const ConfirmCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 400,
      decoration: BoxDecoration(
          color: Colors.purple,
          borderRadius: BorderRadius.circular(40),
          border: Border.all(color: Colors.black.withOpacity(0.3))),
      child: Column(
        children: [
          SizedBox(
            height: 200,
            child: Center(
              child: Text(
                '몇월 몇일\n경기의 결과를 입력하세요',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.check_circle_outline),
                    iconSize: 60,
                    color: Colors.blueAccent,
                  ),
                  Text(
                    '승리',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              Column(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.highlight_remove),
                    iconSize: 60,
                    color: Colors.deepOrange,
                  ),
                  Text(
                    '패배',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
