import 'package:flutter/material.dart';
import 'package:my_flat_finder/until/app_colors.dart';

class ShowMoreButton extends StatelessWidget {
  final String? text;
  final void Function()? onTap;

  const ShowMoreButton({super.key, this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text ?? 'Show more',
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: AppColor.myOrange,
              ),
            ),
            const SizedBox(width: 10),
            Image.asset('assets/images/more_down.png', height: 18),
          ],
        ),
      ),
    );
  }
}
