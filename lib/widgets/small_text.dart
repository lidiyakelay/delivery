import 'package:flutter/cupertino.dart';

import '../utils/dimensions.dart';

class SmallText extends StatelessWidget {
  @override
  Color? color;
  final String text;
  double Size ;
  double height;
  SmallText({Key? key, this.color= const  Color(0XFFccc7c5),
    required this.text,
    this.Size=12,
    this.height=1.2,
  }) : super(key: key);
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color:color,
        fontSize: Size==0? Dimensions.font12: Size,
        fontFamily: 'Roboto',
        height: height,

      ),
    );
  }
}
