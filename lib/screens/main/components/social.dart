import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news/constants.dart';

class Social extends StatelessWidget {
  const Social({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset("assets/icons/behance-alt.svg"),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
          child: SvgPicture.asset("assets/icons/feather_dribbble.svg"),
        ),
        SvgPicture.asset("assets/icons/feather_twitter.svg"),
        const SizedBox(width: kDefaultPadding),
        ElevatedButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            padding: const EdgeInsets.symmetric(
                horizontal: kDefaultPadding, vertical: kDefaultPadding / 2),
          ),
          child: const Text("Let's Talk"),
        ),
      ],
    );
  }
}
