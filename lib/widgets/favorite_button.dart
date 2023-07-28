import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FavoriteButton extends StatelessWidget {
  const FavoriteButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      shape: const CircleBorder(),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SvgPicture.asset('lib/assets/images/heart.svg'),
      ),
    );
  }
}
