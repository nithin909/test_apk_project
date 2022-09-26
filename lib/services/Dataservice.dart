import 'package:http/http.dart' as http;
import 'package:test_project/model/datamodel.dart';

class DataService{
  var url = "https://fakestoreapi.com/products";

  Future<List<Datamodel>?> getservice () async{
    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200){
      return datamodelFromJson(response.body);
    }else{
      return null;
    }
  }
}