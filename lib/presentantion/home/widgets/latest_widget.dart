import 'package:flutter/material.dart';
import 'package:teste_devnology/data/models/latest_model.dart';

class LatestWidget extends StatelessWidget {
  final List<LatestModel> listImage;

  const LatestWidget({Key? key, required this.listImage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: listImage.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext _, int index) {
          return contentLatest(
            listImage[index].image,
          );
        }
    );
  }

  Widget contentLatest(String image) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      width: 325,
      height: 185,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0), //add border radius
        child: Image.asset(image,),
      ),
    );
  }
}
