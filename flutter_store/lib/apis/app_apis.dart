import 'package:flutter/cupertino.dart';
import 'package:girl/config/http_conf.dart';
import 'package:girl/service/http_service.dart';
class AppApi {

  Future<ResultData> getHomeData(String page, BuildContext context, bool showProgress) async {
    Map<String, dynamic> param = {};
    param["page"] = page;
    NetService service = new NetService();
    ResultData resultData =
    await service.post(servicePath['homePageContent'], params: param, context: context, showLoad: showProgress);
    resultData.toast();
    return resultData;
  }



}