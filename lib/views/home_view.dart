import 'package:flutter/material.dart';
import 'package:project/core/constants/color_const.dart';
import 'package:project/core/constants/size_const.dart';
import 'package:project/core/extension/size_extension.dart';
import 'package:project/core/widget/text_widget.dart';
import 'package:project/model/cat_model.dart';
import 'package:project/provider/next_photo_provider.dart';
import 'package:project/service/cat_service.dart';
import 'package:provider/provider.dart';

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
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    width: context.s,
                    height: context.s * 0.45,
                    child: FadeInImage(
                      image:
                          NetworkImage(context.watch<NextPhotoProvider>().img),
                      fit: BoxFit.cover,
                      placeholder: AssetImage("assets/gif/loading.gif"),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: SizeConst.kMinSize,
                        vertical: SizeConst.kMaxSize),
                    child: SizedBox(
                      width: context.s,
                      height: context.s * 0.13,
                      child: TextWidget(
                          text: data[context.watch<NextPhotoProvider>().index].text.toString(),
                          fontSize: SizeConst.kMinSize),
                    ),
                  ),
                  ElevatedButton(
                    child: TextWidget(
                      text: "Next Cat",
                      fontSize: SizeConst.kNormalSize,
                    ),
                    onPressed: () {
                      context.read<NextPhotoProvider>().nextInformation();
                    },
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
