import 'package:PadrinhoMED/app/modules/register/form_register/showDialogs/cases_widget.dart';
import 'package:PadrinhoMED/app/modules/register/register_controller.dart';
import 'package:PadrinhoMED/app/styles/constants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomCheckBox extends StatelessWidget {
  final String title;
  final String description;
  final String imagePath;
  final Function changeFunction;
  final Color border;
  final Widget customBox;

  const CustomCheckBox({Key key, this.title, this.changeFunction, this.border, this.customBox, this.description, this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<RegisterController>(context);
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0),
          side: BorderSide(color:border)),
      child: Container(
        width: MediaQuery
            .of(context)
            .size
            .width * 0.9,
        height: 64,
        child: ListTile(
          leading: InkWell(onTap: changeFunction,
              child: customBox),
          title: Text(title,
              style: TextStyle(fontFamily: "Montserrat Regular",
                  fontSize: 15, color: KGreyColor)),
          trailing: InkWell(onTap: () {

            showDialog( context: context ,builder: (BuildContext context) {
              return CasesWidget(title: title,description: description,imagePath: imagePath);
            });
          },
              child: Container(width: 24, height: 24, child: Image(image: AssetImage("assets/images/icon_information.png",),),)),),
      ),
    );
  }
}
