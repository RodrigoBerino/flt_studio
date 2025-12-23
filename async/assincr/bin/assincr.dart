import 'package:http/http.dart';
void main(List<String> arguments) {
  requestData();
}

requestData(){
  String url = "https://gist.githubusercontent.com/RodrigoBerino/e056f8fcb424ceffd620e4c59e3825b3/raw/82cd28caac756b58bac74b43d87db3087a956e5c/accounts.json";
  Future <Response> futureResponse = get(Uri.parse(url));
  print(futureResponse);
  futureResponse.then((Response response) {
    print(response);
    print(response.body);
  },);
}

