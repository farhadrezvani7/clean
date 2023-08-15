import 'package:clean/core/common/res/strings.dart';
import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final String message;
  final String? status;

  const Failure(this.message, {this.status});

  @override
  List<Object?> get props => [message, status];
}

// General failures
class ServerFailure extends Failure {
  const ServerFailure({message, status}) : super(message, status: status);
}

class InternetFailure extends Failure {
  const InternetFailure({message = INTERNET_CONNECTION_ERROR}) : super(message);
}

class UnknownFailure extends Failure {
  const UnknownFailure({message = GENERAL_ERROR}) : super(message);
}

class ValidationFailure extends Failure {
  const ValidationFailure({message}) : super(message);
}
