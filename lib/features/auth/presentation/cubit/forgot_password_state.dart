import 'package:equatable/equatable.dart';

// part of 'forgot_password_cubit.dart';
abstract class ForgotPasswordState extends Equatable {
  const ForgotPasswordState();

  @override
  List<Object?> get props => [];
}

class ForgotPasswordInitial extends ForgotPasswordState {}

class ForgotPasswordLoading extends ForgotPasswordState {}

class OtpSentSuccess extends ForgotPasswordState {}

class OtpVerificationSuccess extends ForgotPasswordState {}

class ResetPasswordSuccess extends ForgotPasswordState {}

class ForgotPasswordError extends ForgotPasswordState {
  final String message;
  const ForgotPasswordError(this.message);

  @override
  List<Object?> get props => [message];
}