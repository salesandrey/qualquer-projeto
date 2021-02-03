import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:PadrinhoMED/app/interfaces/local_storage_interface.dart';
import 'package:PadrinhoMED/app/repositories/signature_repository.dart';
import 'package:PadrinhoMED/app/services/shared_local_storage_service.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:validators/sanitizers.dart';

part 'signature_controller.g.dart';

@Injectable()
class SignatureController = _SignatureControllerBase with _$SignatureController;

abstract class _SignatureControllerBase with Store {

  @observable
  bool loading = false;

  @action
  void changeLoading(bool value){
    loading = value;
  }

  @observable
  File imageSignature;

  @action
  Future<void> saveImage(var image) async {
    ILocalStorage storage = SharedLocalStorageService();
    String userID = await storage.get("id");

    Uint8List pngBytes = image.buffer.asUint8List();
    String image64 = base64Encode(pngBytes);

    await SignatureRepository().insertSignature(toInt(userID), image64);

  }


}
