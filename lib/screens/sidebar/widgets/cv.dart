import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

class CV extends StatelessWidget {
  const CV({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () async {
        // js.context.callMethod('open', [
        //   ''
        // ]);
        const url =
            'https://drive.google.com/file/d/1KE6N00MhBUWTxECxYu_O-Sf4VtAZ7m41/view?usp=drive_link';
        final uri = Uri.parse(url);
        if (await canLaunchUrl(uri)) {
          await launchUrl(uri);
        } else {
          // can't launch url
        }
      },
      child: FittedBox(
        child: Row(
          children: [
            Text(
              'DOWNLOAD Resume',
              style: TextStyle(
                color: Theme.of(context).textTheme.bodyText1!.color,
              ),
            ),
            const SizedBox(width: 10.0),
            SvgPicture.asset('assets/icons/download.svg'),
          ],
        ),
      ),
    );
  }
}
