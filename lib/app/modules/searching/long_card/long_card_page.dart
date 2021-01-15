import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'long_card_controller.dart';

class LongCard extends StatelessWidget {

  final LongCardController controller;
  final Color colorFilter;
  final Color colorText;
  final Color colorBorder;
  final Function removeElement;

  const LongCard({Key key, this.controller, this.removeElement,
    this.colorFilter, this.colorText, this.colorBorder}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context){
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: Container(
          padding: EdgeInsets.only(top: 4,right: 8,left: 12,bottom: 4),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              border: Border.all(color: colorBorder,width: 1),
              color: colorFilter
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(controller.title,style: TextStyle(fontFamily: "Montserrat Regular",color: Colors.black,fontSize: 14)),
              SizedBox(width: 8),
              InkWell(
                  onTap: removeElement,
                  child: Transform.scale(scale: 0.8,child: ImageIcon(AssetImage(
                      "assets/icons/delete.png"),)))
            ],
          ),
        ),
      );
    });
  }
}

