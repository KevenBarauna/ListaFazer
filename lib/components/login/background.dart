import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size tela = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            height: tela.height,
            width: double.infinity,
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Positioned(
                  top: 0,
                  left: 0,
                  child: Image.asset('assets/image/main_top.png'),
                  width: tela.width * 0.3,
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  child: Image.asset('assets/image/main_bottom.png'),
                  width: tela.width * 0.2,
                ),
                child,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
