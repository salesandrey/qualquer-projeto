


import 'dart:convert';

import 'package:PadrinhoMED/app/models/configuration_model.dart';
import 'package:http/http.dart';

class ConfigurationRepository{

  Future<void> changeConfiguration(ConfigurationModel configuration) async{

    final url = "https://padmed.lanconi.com.br/configuracaoSend.py";

    var query = jsonEncode(
        {
          "idUsuario": configuration.idUsuario,
          "notificacaoPush":configuration.notificacaoPush,
          "notificacaoEmail":configuration.notificacaoEmail,
          "favoritadoAlguem":configuration.favoritadoAlguem,
          "favoritoFavoritou":configuration.favoritoFavoritou,
          "solicitadoPadrinho":configuration.solicitadoPadrinho,
          "escolhidoAfilhado":configuration.escolhidoAfilhado,
          "apadrinhamentoOficial":configuration.apadrinhamentoOficial
        });

    Response response = await post(
        url, headers: {"Content-Type": "application/json"}, body: query);
    if (response.statusCode == 200){
      print("Ok");
    }else{
      return null;
    }
  }

  Future<ConfigurationModel> getConfigurations(int id) async {

  final url = "https://padmed.lanconi.com.br/configuracaoSend.py";

  var query = jsonEncode(
      {
        "idUsuario": id,
      });

  Response response = await post(url, headers: {"Content-Type": "application/json"}, body: query);
  if (response.statusCode == 200){
    dynamic data = jsonDecode(response.body)["results"];
    ConfigurationModel configuration = data.map((value) => ConfigurationModel.fromMap(value));
    return configuration;
  }else{
    return null;
  }
  }
}