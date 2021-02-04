import 'package:PadrinhoMED/app/global_components/card_user_widget/card_user_widget_controller.dart';
import 'package:PadrinhoMED/app/global_components/card_user_widget/card_user_widget_page.dart';
import 'package:PadrinhoMED/app/global_components/dialog_location_filter/dialog_location_filter_controller.dart';
import 'package:PadrinhoMED/app/global_components/dialog_location_filter/dialog_location_filter_page.dart';
import 'package:PadrinhoMED/app/models/user_list_model.dart';
import 'package:PadrinhoMED/app/modules/home/componentes/premium_dialog_widget.dart';
import 'package:PadrinhoMED/app/styles/constants.dart';
import 'package:PadrinhoMED/app/utils/uf_brazil.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'home_filtered_controller.dart';

class HomeFilteredPage extends StatefulWidget {

  final List<String> graduations;
  final List<String> specialities;
  final List<String> programs;
  final String nameOrInstagram;
  final int idUser;

  const HomeFilteredPage({Key key, this.graduations,
    this.specialities, this.programs, this.nameOrInstagram, this.idUser}) : super(key: key);

  @override
  _HomeFilteredPageState createState() => _HomeFilteredPageState(
      graduations: graduations,
      nameOrInstagram: nameOrInstagram,
      programs: programs,
      idUser: idUser,
      specialities: specialities);
}

class _HomeFilteredPageState extends ModularState<HomeFilteredPage, HomeFilteredController> {


  final List<String> graduations;
  final List<String> specialities;
  final List<String> programs;
  final String nameOrInstagram;
  final int idUser;

  _HomeFilteredPageState({this.graduations, this.specialities, this.programs, this.nameOrInstagram,this.idUser});

  @override
  void initState() {
    controller.changeUserID(idUser);
    controller.initLongCards(speciality: specialities,graduation: graduations,program: programs,name: nameOrInstagram);
    controller.getUsersFiltered();
    super.initState();
  }

  Future<void> initLocationFilter() async{
    controller.changeLoading(true);
    Modular.to.pop();
    controller.changeState(controller.stateDialog);
    controller.changeCity(controller.cityDialog);
    controller.changeLoading(false);

  }

  @override
  Widget build(BuildContext context) {

    if(controller.loading){
      return Scaffold(body: Center(child: CircularProgressIndicator(valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF6259B2)))));
    }

    return Observer(builder: (context){
      return Scaffold(
        backgroundColor: KPrimaryColor,
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  height: 64,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    color: KSecondaryColor,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FittedBox(
                              child: Text(
                                "Procurando em",
                                style: TextStyle(
                                    color: KGreyColor,
                                    fontSize: 12,
                                    fontFamily: "Montserrat Regular"
                                ),
                              ),
                            ),
                            SizedBox(height: 1,),
                            Text(
                              controller.premium? (controller.city==null)? "":
                              controller.city.isEmpty ? "${controller.state}":
                              "${controller.city}, ${UFBrazil.ufBrazil.keys.firstWhere((element) => UFBrazil.ufBrazil[element]==controller.state)}":
                              "Todo Brasil",
                              style: TextStyle(
                                color: controller.premium?Colors.black:kGrey,
                                fontFamily: "Montserrat Bold",
                                fontSize: 18,
                              ),
                            )
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          if(controller.premium){
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return Observer(builder: (_){
                                    return LocationFilterDialog(
                                        controller: DialogLocationFilterController(
                                            changeCity: controller.changeCityDialog,
                                            changeState: controller.changeStateAndCity,
                                            ufs: controller.ufs,
                                            buttonActivate: controller.activateButton,
                                            city: controller.cityDialog,
                                            state: controller.stateDialog,
                                            cities: controller.cities,
                                            loadFilter: initLocationFilter
                                        ));
                                  });

                                });
                          }else {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return PremiumDialog();
                                });
                          }
                        },
                        child: Container(
                          child: FittedBox(
                            child: Text(
                              "editar",
                              style: TextStyle(
                                  color: controller.premium?Color(0xFF6259B2):kGrey,
                                  fontFamily: "Montserrat Bold",
                                  fontSize: 15),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  child:
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        controller.nameOrInstagram!=null?controller.nameOrInstagram:Container(),
                        controller.graduations!=null?Row(mainAxisSize: MainAxisSize.min,children: controller.graduations):Container(),
                        controller.programs!=null? Row(mainAxisSize: MainAxisSize.min,children: controller.programs):Container(),
                        controller.specialities!=null? Row(mainAxisSize: MainAxisSize.min,children: controller.specialities):Container(),
                      ]
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Divider(),
                Expanded(
                  child: StreamBuilder<List<UserMatchModel>>(
                    stream: controller.usersFiltered,
                    builder: (context,snapshot){
                      if(snapshot.hasData && snapshot.connectionState==ConnectionState.done) {
                        return Container(
                          padding: EdgeInsets.symmetric(horizontal: 16,vertical: 16),
                          height: MediaQuery.of(context).size.height,
                          child: ListView.builder(
                            shrinkWrap: false,
                              itemCount: snapshot.data.length,
                              itemBuilder: (context, index) {
                            return CardUserWidget(
                              controller: CardUserWidgetController(
                                  changeGlobalLike: (){setState(() {});},
                                  appController: controller.appController,
                                  user: snapshot.data[index],
                                  id: snapshot.data[index].id,
                                  nameAbr: "${snapshot.data[index].nome
                                      .split(" ")
                                      .first} ${snapshot.data[index].nome
                                      .split(" ")
                                      .last
                                      .substring(0, 1)}.",
                                  like: false),
                            );
                          }),
                        );
                      }
                      return Container();
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
