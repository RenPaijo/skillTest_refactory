import 'package:flutter/material.dart';


class ImgHeader extends StatelessWidget {
  final String imgheader;
  const ImgHeader({
    Key? key, required this.imgheader,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 70,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imgheader),
        ),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}