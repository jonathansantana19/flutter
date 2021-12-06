
import 'package:hello/data/provider/remote_provider.dart';

class RemoterRepository {

late final Remoter api = Remoter();

Future<dynamic> getAll(){
  print(api.getUser(1));
  return api.getUser(1);
}
// getId(id){
//   return api.getId(id);
// }
// delete(id){
//   return api.delete(id);
// }
// edit(obj){
//   return api.edit( obj );
// }
// add(obj){
//     return api.add( obj );
// }

}