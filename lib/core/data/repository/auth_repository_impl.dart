// import 'package:dartz/dartz.dart';
// import 'package:injectable/injectable.dart';
// import 'package:shop_app/core/di/di.dart';
// import 'package:shop_app/core/domain/repository/auth_repository.dart';
// import 'package:shop_app/core/error/failures.dart';

// @Singleton(as: AuthRepository, env: [Env.dev, Env.prod])
// class AuthRepositoryImpl extends SafeApiCall implements AuthRepository {
//   final ApiClient _apiClient;

//   AuthRepositoryImpl(
//     super._networkInfo,
//     this._apiClient,
//   );

//   @override
//   Future<Either<Failure, bool>> getOTPCode(String phoneNumber) async {
//     final request = RegisterRequest(phoneNumber: phoneNumber);
//     final either = await call(_apiClient.getOTPCode(request));
//     return either.fold(
//       (l) => left(l),
//       (r) => right(true),
//     );
//   }

//   @override
//   Future<Either<Failure, bool>> confirmOtpCode(
//       String phoneNumber, String otpCode) async {
//     return left(const UnknownFailure());
//   }
// }
