part of 'login_cubit.dart';

@immutable
abstract class LoginState {}

class LoginInitial extends LoginState {}
class UpdatePhoneState extends LoginState {}
class UpdatePasswordState extends LoginState {}
