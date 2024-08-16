import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GitHubLogoIcon extends StatelessWidget {
  const GitHubLogoIcon({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.all(2),
      child: SvgPicture.asset(
        'assets/icons/github.svg',
        width: 20,
        height: 20,
        colorFilter: ColorFilter.mode(
          theme.colorScheme.onSurface,
          BlendMode.srcIn,
        ),
      ),
    );
  }
}
