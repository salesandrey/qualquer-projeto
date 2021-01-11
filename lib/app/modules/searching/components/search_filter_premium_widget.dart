import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SearchFilterPremiumWidget extends StatefulWidget {

  @override
  _SearchFilterPremiumWidgetState createState() => _SearchFilterPremiumWidgetState();

}

class _SearchFilterPremiumWidgetState extends State<SearchFilterPremiumWidget> {

  bool showOption = true;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(minHeight: 35, maxWidth:MediaQuery.of(context).size.width),
      child: showOption?
      InkWell(
        onTap: (){
          showOption = false;
          setState(() {});
        },
        child: Container(
          color: Color(0xFFfbf1e5),
          width: MediaQuery.of(context).size.width,
          child:  Center(
            child: Text("Já pensou em mais filtros? A gente sim.",
              style: TextStyle(fontFamily: "Montserrat Bold",color: Color(0xFF313131),fontSize: 15),),
          ),
    ),
      ) : Container(
        color: Color(0xFFfbf1e5),
        width:MediaQuery.of(context).size.width ,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,mainAxisSize: MainAxisSize.min,children: [
            Container(
                padding: EdgeInsets.only(top: 32),
                child: Text("Localização",style: TextStyle(fontFamily: "Montserrat Bold",color: Color(0xFFb2b2b2),fontSize: 15),)),
            SizedBox(height: 16,),
            TextField(
              textAlignVertical: TextAlignVertical.center,
              readOnly: true,autofocus: false,enabled: false,
              decoration: InputDecoration(
                  hintText: "Estado",hintStyle: TextStyle(fontFamily: "Montserrat Regular",fontSize: 18,color: Color(0xFFb2b2b2))),),
            SizedBox(height: 24,),
            TextField(
              textAlignVertical: TextAlignVertical.center,
              readOnly: true,autofocus: false,enabled: false,
              decoration: InputDecoration(
                  hintText: "Cidade",hintStyle: TextStyle(fontFamily: "Montserrat Regular",fontSize: 18,color: Color(0xFFb2b2b2))),),
            SizedBox(height: 32,),
            InkWell(
              onTap: (){
                Modular.to.pushNamed("/Premium");
              },
              child: Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Quer desbloquear esse filtro?",textAlign: TextAlign.center,style: TextStyle(fontFamily: "Montserrat Bold",fontSize: 15,color: Color(0xFF313131))),
                    Text("Clique aqui e saiba como",textAlign: TextAlign.center,style: TextStyle(decoration: TextDecoration.underline,fontFamily: "Montserrat Bold",fontSize: 15,color: Color(0xFF313131)))
                  ]),
              ),
            ),
            SizedBox(height: 24,),
          ]),
        ),)
    );
  }
}
