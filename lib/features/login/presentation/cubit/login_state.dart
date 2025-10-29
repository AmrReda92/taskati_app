part of 'login_cubit.dart';

@immutable
sealed class LoginState {}

final class LoginInitial extends LoginState {}
final class SaveUserLoading extends LoginState {}
final class SaveUserError extends LoginState {}
final class SaveUserSuccess extends LoginState {}


