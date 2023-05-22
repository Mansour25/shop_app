import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/ShopApp/Helper/dio_helper.dart';
import 'package:shop_app/ShopApp/Helper/end_points.dart';
import 'package:shop_app/ShopApp/Shop_Bloc/states.dart';
import 'package:shop_app/ShopApp/modules/shop_login_model.dart';

class ShopLoginCubit extends Cubit<ShopLoginState> {
  ShopLoginCubit() : super(ShopLoginInitialState());

  static ShopLoginCubit get(context) => BlocProvider.of(context);
  ShopLoginModel?   loginModel;

  void user_login({
    String lang = 'ar',
    required String email,
    required String password,
  }) {
    emit(ShopLoginLoadingState());
    DioHelper.postDate(
      url: LOGIN,
      query: {},
      data: {
        'email': email,
        'password': password,
      },
    ).then((value) {
      print(value.data);
      var map = ShopLoginModel.fromJson(value.data);
      print(map.status);
      print(map.message);
      loginModel = ShopLoginModel.fromJson(value.data);
      emit(ShopLoginSuccessState(loginModel!));
    }).catchError((error) {
      print(" Error !!!!!!!!!! :  ${error.toString()}!!!!!!!!!!");
      emit(ShopLoginErrorState(error.toString()));
    });
  }
}
