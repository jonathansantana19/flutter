import 'dart:convert';

import 'package:get/get_connect.dart';

// https://retoolapi.dev/dgHfUO/data
class Remoter extends GetConnect {


 Future<dynamic> getUser(int id) async{
    final response = await get('https://retoolapi.dev/dgHfUO/data');
    if(response.status.hasError){
      return Future.error(response.statusText!);
    } else {
      return response.body;
    }
  }


   Future<dynamic> getUserBydId(int id) async{
    final response = await get('https://retoolapi.dev/dgHfUO/data/${id}');
    if(response.status.hasError){
      return Future.error(response.statusText!);
    } else {
      return response.body;
    }
  }
// Get request
// Future<dynamic> getUser(int id) => get('http://gerador-nomes.herokuapp.com/nomes/') ;
// Post request
// Future<Response> postUser(Map data) => post('http://youapi/users', body: data);
// // Post request with File
// Future<Response<CasesModel>> postCases(List<int> image) {
//   final form = FormData({
//     'file': MultipartFile(image, filename: 'avatar.png'),
//     'otherFile': MultipartFile(image, filename: 'cover.png'),
//   });
//   return post('http://youapi/users/upload', form);
// }
// GetSocket userMessages() {
//   return socket('https://yourapi/users/socket');
// }

}