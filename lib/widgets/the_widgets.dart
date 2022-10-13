import 'package:ajudar/widgets/image_widget.dart';
import 'package:ajudar/widgets/text_widget.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

List getWidgets(List<Map<String, String>> widgt) {
  final int widgets_number = widgt.length;
  final bool is_odd = widgets_number % 2 == 1;
  final int columns_number = (widgets_number / 2).ceil();

  List columns = [];

  for (int i = 0; i < columns_number; i++) {
    List<Widget> children = [];
    if (i == columns_number - 1 && is_odd) {
      columns.add(const Gap(5));
      if (widgt[2 * i]["type"] == "text") {
        children.add(TextBox(
            text: widgt[2 * i]["text"] ?? "",
            colorHexString: widgt[2 * i]["color"] ?? ""));
      } else if (widgt[2 * i]["type"] == "image") {
        children.add(ImageBox(path: widgt[2 * i]["path"] ?? ""));
      }
      columns.add(Column(
        children: children,
      ));
    } else {
      columns.add(const Gap(5));
      if (widgt[2 * i]["type"] == "text") {
        children.add(TextBox(
            text: widgt[2 * i]["text"] ?? "",
            colorHexString: widgt[2 * i]["color"] ?? ""));
      } else if (widgt[2 * i]["type"] == "image") {
        children.add(ImageBox(path: widgt[2 * i]["path"] ?? ""));
      }

      columns.add(const Gap(5));
      if (widgt[2 * i + 1]["type"] == "text") {
        children.add(TextBox(
            text: widgt[2 * i + 1]["text"] ?? "",
            colorHexString: widgt[2 * i + 1]["color"] ?? ""));
      } else if (widgt[2 * i + 1]["type"] == "image") {
        children.add(ImageBox(path: widgt[2 * i + 1]["path"] ?? ""));
      }
      columns.add(Column(
        children: children,
      ));
    }
  }

  return columns;
}
