import "package:flutter/material.dart";

PreferredSizeWidget customAppBar({
  required BuildContext context,
  required title,
}) {
  return AppBar(
    leading: IconButton(
      onPressed: () => Navigator.pop(context),
      icon: Icon(Icons.arrow_left_rounded, size: 42),
    ),
    title: Text(title, style: TextStyle(fontWeight: FontWeight.w500)),
    centerTitle: true,
  );
}
