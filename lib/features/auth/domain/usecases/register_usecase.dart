import 'package:dartz/dartz.dart';
import 'package:teamify/core/errors/failures.dart';

// import '../../../../core/usecase/usecase.dart';
import '../entities/user.dart';
import '../repositories/auth_repository.dart';

class RegisterUseCase  {
  
  final AuthRepository repository;

  RegisterUseCase(this.repository);

  // @override
  Future<Either<Failure, User>> call({
  required String name,
  required String email,
  required String password,
  required String role,
  String? extraField,
}) async {
  return repository.register(
    name: name,
    email: email,
    password: password,
    role: role,
    extraField: extraField,
  );
}
}

class RegisterParams {
  final String name;
  final String email;
  final String password;
  final String role;
  final String? extraField;

  RegisterParams({
    required this.name,
    required this.email,
    required this.password,
    required this.role,
    this.extraField,
  });
}