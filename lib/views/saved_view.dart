import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:project/core/constants/size_const.dart';
import 'package:project/core/widget/text_widget.dart';
import 'package:project/provider/next_photo_provider.dart';
import 'package:provider/provider.dart';

class SavedView extends StatelessWidget {
  const SavedView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: TextWidget(
          text: "Saved page",
          fontSize: SizeConst.kNormalSize,
        ),
      ),
      body: ListView.builder(
        itemCount: context.watch<NextPhotoProvider>().aboutcat.length,
        itemBuilder: (_, __) => Card(
          child: ListTile(
            leading: TextWidget(
              text: "Cat",
              fontSize: SizeConst.kMinSize,
              fontWeight: FontWeight.bold,
            ),
            title: TextWidget(
              text: context.watch<NextPhotoProvider>().aboutcat[__].toString(),
              fontSize: SizeConst.kMinSize,
            ),
          ),
        ),
      ),
    );
  }
}
