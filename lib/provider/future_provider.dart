
import 'package:riverpods_demo1/model/user_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpods_demo1/service/api_service.dart';



// Call APIService Provider
final ApiSeriverProvider = Provider<ApiService>((ref){
    return ApiService();
});

final UserProvider  = FutureProvider<List<UserModel>>((ref)async{
      final api = ref.read(ApiSeriverProvider);

      return api.fetchUser();
});
