import 'package:flutter/cupertino.dart';

class Tag extends CustomClipper<Path>{
  @override
  getClip(Size size) {
    var path = Path();

    // Since the wave goes vertically lower than bottom left starting point,
    // we'll have to make this point a little higher.
    path.lineTo(0.0, size.height -400);

    // TODO: The wavy clipping magic happens here, between the bottom left and bottom right points.

    // The bottom right point also isn't at the same level as its left counterpart,
    // so we'll adjust that one too.
    path.lineTo(size.width-50, size.height -850);
    path.lineTo(size.width, 0.0);
    path.close();


    // TODO: implement getClip
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    throw UnimplementedError();
  }

}