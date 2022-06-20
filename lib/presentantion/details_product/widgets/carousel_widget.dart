import 'package:flutter/material.dart';
import 'package:teste_devnology/common/constants/color_consntant.dart';
import 'package:teste_devnology/common/constants/image_constant.dart';

class CarouselWidget extends StatefulWidget {
  final List<String> imagesProduct;
  const CarouselWidget({Key? key, required this.imagesProduct}) : super(key: key);

  @override
  State<CarouselWidget> createState() => _CarouselWidgetState();
}

class _CarouselWidgetState extends State<CarouselWidget> {

  PageController controller = PageController(
      initialPage: 0
  );
  
  int indicator = 0;

@override
  Widget build(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      pageViewWidget(),
      indicatorWidget(indicator)
    ],
  );
}


Widget pageViewWidget(){
  return SizedBox(
    width: 200,
    height: 200,
    child: PageView.builder(
        controller: controller,
        scrollDirection: Axis.horizontal,
        onPageChanged: _onPageViewChange,
        itemCount: widget.imagesProduct.length,
        itemBuilder: (BuildContext _, int index) {
          return contentImagesProduct(
            widget.imagesProduct[index],
          );
        }
    ),
  );
}

Widget contentImagesProduct(String image){
  return Container(
    margin: const EdgeInsets.only(left: 10,right: 10),
      child: Image.asset(image,height: 200,width: 200,)
  );
}

Widget indicatorWidget(int indicator){
  return SizedBox(
    height: 10,
    width: MediaQuery.of(context).size.width,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: widget.imagesProduct.asMap().map((index, value) => MapEntry(index, Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        height: 8,
        width: 8,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: index != indicator ? ColorConstant.indicatorGray : ColorConstant.backgroundDevnology,
        ),
      ))).values.toList(),
    ),
  );
}

_onPageViewChange(int page) {
  setState(() {
    indicator = page;
  });
}
}
