import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:labor_application/core/utilis.dart';
import 'package:meta/meta.dart';

import '../../../layout/home_layout.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  static LoginCubit get(context) => BlocProvider.of(context);
  String? phone, password;

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

  login({
    required BuildContext context,
}) {
    emit(LoginLoadingState());
    FirebaseAuth.instance
        .signInWithPhoneNumber(phoneController.text)
        .then((value) {
      emit(LoginSuccessState());
      Utils.openScreen(context, HomeLayout());
    })
        .catchError((error) {
      emit(LoginErrorState());
    });

  }
}
