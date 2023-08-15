import 'package:dartz/dartz.dart';

import '../../error/failures.dart';

abstract class AuthRepository {
  Future<Either<Failure, bool>> getOTPCode(String phoneNumber);

  Future<Either<Failure, bool>> confirmOtpCode(
    String phoneNumber,
    String otpCode,
  );
}
