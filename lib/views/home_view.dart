import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:project/core/constants/size_const.dart';
import 'package:project/core/extension/size_extension.dart';
import 'package:project/core/widget/text_widget.dart';
import 'package:project/model/cat_model.dart';
import 'package:project/service/cat_service.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder(
        future: CatService.getData(),
        builder: (BuildContext context, AsyncSnapshot<List<CatModel>> snap) {
          if (snap.hasError) {
            return Center(
              child: Text("ERROR"),
            );
          } else if (!snap.hasData) {
            return Center(
              child: CircularProgressIndicator.adaptive(),
            );
          } else {
            return Column(
              children: [
                TextWidget(
                  text: "About Cat",
                  fontSize: SizeConst.kMinSize,
                ),
              ],
            );
          }
        },
      ),
    );
  }
}
