import 'package:ajudar/utils/app_layout.dart';
import 'package:ajudar/utils/app_styles.dart';
import 'package:ajudar/widgets/image_text_widget.dart';
import 'package:ajudar/widgets/text_widget.dart';
import 'package:ajudar/widgets/the_widgets.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Ong extends StatelessWidget {
  final Map<String, dynamic> ong;
  const Ong({super.key, required this.ong});

  Future<void> _launchInBrowser(String url) async {
    if (await canLaunchUrlString(url)) {
      launchUrlString(
        url,
        mode: LaunchMode.externalApplication,
      );
    }
    {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    List columnsOfWidgets = getWidgets(ong['widgets']);
    return InkWell(
        onTap: () {
          _launchInBrowser(ong['url']);
        },

        // => launchUrl(
        //     Uri.parse('https://pub.dev/packages/url_launcher#-installing-tab-'),
        //     mode: LaunchMode.externalApplication),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            padding: EdgeInsets.only(
                top: 10, left: size.width * 0.05, right: size.width * 0.05),
            child: Text(
              ong["name"],
              style: Styles.headLineStyle2,
            ),
          ),
          SingleChildScrollView(
            padding: EdgeInsets.symmetric(
                vertical: 12, horizontal: size.width * 0.05),
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ImageText(text: ong["info"], path: ong["path"]),
                const Gap(8),
                ...columnsOfWidgets,
              ],
            ),
          ),
        ]));
  }
}
