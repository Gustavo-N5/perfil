import 'package:flutter/material.dart';
import 'package:perfil/widget/helper/media_query.dart';
import 'package:perfil/widget/menu_item.dart';

void bottomSheetModalCamera(
  BuildContext context,
) {
  showModalBottomSheet(
    context: context,
    builder: (context) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(24),
        child: Container(
          color: Colors.white,
          height: height(context, 0.3),
          width: width(context, 1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: height(context, 0.01)),
                child: Container(
                  height: height(context, 0.005),
                  width: width(context, 0.25),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: width(context, 0.9)),
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.close),
                ),
              ),
              const MenuItem(
                sufizIcon: "assets/icons/camera_24px.svg",
                text: "Tirar foto",
                bottom: Radius.circular(16),
                top: Radius.circular(16),
              ),
              SizedBox(
                height: height(context, 0.02),
              ),
              const MenuItem(
                  sufizIcon: "assets/icons/add_photo_24px.svg",
                  text: "Escolher foto",
                  bottom: Radius.circular(16),
                  top: Radius.circular(16))
            ],
          ),
        ),
      );
    },
  );
}
