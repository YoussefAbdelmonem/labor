import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());
  static LoginCubit get(context) => BlocProvider.of(context);
  String? phone , password;

  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void updatePhone(String value) {
    phone = value;
    emit(UpdatePhoneState());
  }
  void updatePassword(String value) {
    password = value;
    emit(UpdatePasswordState());
  }
  Future login ()async{

  }

}
