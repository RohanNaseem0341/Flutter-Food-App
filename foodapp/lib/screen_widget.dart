import 'package:flutter/material.dart';

import 'const.dart';

class ScreenWidget extends StatelessWidget {
  final int index;
  const ScreenWidget({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(80)),
          ),
          child: Image.asset(
            "assets/$index.png",
            width: 230,
          ),
        )),
        Expanded(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    Text(
                      titles[index],
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: Colors.black87),
                    ),
                    Text(
                      abouts[index],
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(),
            ),
          ],
        ))
      ],
    );
  }
}
