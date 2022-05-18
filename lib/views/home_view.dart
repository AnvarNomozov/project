import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:project/core/constants/color_const.dart';
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
      appBar: AppBar(
        elevation: 0,
      ),
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
            var data = snap.data;
            return SizedBox(
              width: context.s,
              height: context.s,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: SizeConst.KMaxMaxSize),
                    child: TextWidget(
                      text: data![3].type.toString().toUpperCase(),
                      fontSize: SizeConst.kMaxSize,
                    ),
                  ),
                  Container(
                    width: context.s,
                    height: context.s * 0.5,
                    color: ColorConst.kPrimartBlack,
                    child: FadeInImage(
                      image: NetworkImage("https://cataas.com/cat"),
                      placeholder: AssetImage("assets/gif/load.gif"),
                    ),
                  )
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
