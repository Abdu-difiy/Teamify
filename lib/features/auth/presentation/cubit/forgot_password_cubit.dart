import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teamify/features/auth/domain/usecases/reset_password_usecase.dart';
import 'package:teamify/features/auth/domain/usecases/send_otp_usecase.dart';
import 'package:teamify/features/auth/domain/usecases/verify_otp_usecase.dart';
import 'package:teamify/features/auth/presentation/cubit/forgot_password_state.dart';

class ForgotPasswordCubit extends Cubit<ForgotPasswordState> {
  final SendOtpUseCase sendOtpUseCase;
  final VerifyOtpUseCase verifyOtpUseCase;
  final ResetPasswordUseCase resetPasswordUseCase;

  ForgotPasswordCubit({
    required this.sendOtpUseCase,
    required this.verifyOtpUseCase,
    required this.resetPasswordUseCase,
  }) : super(ForgotPasswordInitial());

  // ✅ ميثود إرسال الكود (دي اللي ناقصاك عشان الزرار يشتغل)
  Future<void> sendOtp(String email) async {
    emit(ForgotPasswordLoading());
    final result = await sendOtpUseCase(email);
    result.fold(
      (failure) => emit(ForgotPasswordError(failure.message)),
      (_) => emit(OtpSentSuccess()),
    );
  }

  // ✅ ميثود التأكد من الكود
  Future<void> verifyOtp(String otp) async {
    emit(ForgotPasswordLoading());
    final result = await verifyOtpUseCase(otp);
    result.fold(
      (failure) => emit(ForgotPasswordError(failure.message)),
      (_) => emit(OtpVerificationSuccess()),
    );
  }

  // ✅ ميثود تغيير كلمة المرور
  Future<void> resetPassword(String newPassword) async {
    emit(ForgotPasswordLoading());
    final result = await resetPasswordUseCase(newPassword);
    result.fold(
      (failure) => emit(ForgotPasswordError(failure.message)),
      (_) => emit(ResetPasswordSuccess()),
    );
  }
}

