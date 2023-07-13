import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitial());
  String? phone , password,name;

  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();

  void updatePhone(String value) {
    phone = value;
    emit(UpdatePhoneState());
  }
  void updateName(String value) {
    name = value;
    emit(UpdatePhoneState());
  }
  void updatePassword(String value) {
    password = value;
    emit(UpdatePasswordState());
  }
}
