import 'package:fcclone/app/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Init extends StatelessWidget {
  final Function() configENV;

  Init({@required this.configENV});

  Future init() async {
    configENV();
    debugPaintSizeEnabled = false;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: init(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return App();
      },
    );
  }
}
