part of 'register_cubit.dart';

@immutable
abstract class RegisterState {}

class RegisterInitial extends RegisterState {}
class UpdatePhoneState extends RegisterState {}
class UpdatePasswordState extends RegisterState {}
