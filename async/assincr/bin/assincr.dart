import 'dart:async';

import 'package:assincr/apikey.dart';
import 'package:http/http.dart';
import 'dart:convert';



void main(List<String> arguments) {
  //StreamSubscription streamSubscription = streamController.stream.listen((String info) {
  //    print(info);
  //  },);
  //requestData();
  //requestDataAsync();
  /* sendDataAsync({
    "id": "NB120",
    "name": "Rod",
    "lastName": "Teste",
    "balance": 210.0
  }); */
}

/*programação assíncrona existe para:

não travar a UI
não bloquear outras requisições
permitir várias operações ao mesmo tempo
reagir a eventos (cliques, respostas, streams)

Nada que dependa de IO deve ser síncrono*/

/* requestData(){
  String url = "https://gist.githubusercontent.com/RodrigoBerino/e056f8fcb424ceffd620e4c59e3825b3/raw/82cd28caac756b58bac74b43d87db3087a956e5c/accounts.json";
  Future <Response> futureResponse = get(Uri.parse(url)); //get que pega a async
  futureResponse.then(
    (Response response){
      streamController.add("${DateTime.now()} | Requisição de leitura usando then.");
    }
    );
} */
