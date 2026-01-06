import 'dart:async';

import 'package:assincr/apikey.dart';
import 'package:http/http.dart';
import 'dart:convert';

class AccountService {
  StreamController<String> _streamController = StreamController<String>();
  Stream<String> get streamInfos => _streamController.stream;
  String url = "https://api.github.com/gists/e056f8fcb424ceffd620e4c59e3825b3";


  Future<List<Account>>getAll() async{ //função assincrona
  //String url = "https://gist.githubusercontent.com/RodrigoBerino/e056f8fcb424ceffd620e4c59e3825b3/raw/82cd28caac756b58bac74b43d87db3087a956e5c/accounts.json";
  Response response = await get(Uri.parse(url));
  _streamController.add("${DateTime.now()} | Requisição de leitura.");
  return json.decode(response.body);
}

  addAccount(Map<String, dynamic> mapAccount) async{
  List<dynamic> listAccounts = await getAll();
  listAccounts.add(mapAccount);
  String content = json.encode(listAccounts);
  //print(content);

  //String url = "https://api.github.com/gists/e056f8fcb424ceffd620e4c59e3825b3";
  
  Response response = await post(Uri.parse(url), headers:{ //passando a chave no header
    "Authorization" : "Bearer $apiKey"},
    body: json.encode({ //passar o map e converção usando o json encode
      "descripition" : "account.json",
      "public" : true,
      "files" : {
        "accounts.json" : {
          "content" : content, 
      }
    }    
  }),);
}

}