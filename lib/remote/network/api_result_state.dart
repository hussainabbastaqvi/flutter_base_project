import 'package:sealed_unions/sealed_unions.dart';

class ApiResultState extends Union3Impl<_Failed, _Result, _Loading> {
  static const _factory = Triplet<_Failed, _Result, _Loading>();

  ApiResultState._(
    Union3<_Failed, _Result, _Loading> union,
  ) : super(union);

  factory ApiResultState.failed(String exception) =>
      ApiResultState._(_factory.first(_Failed(exception)));

  factory ApiResultState.result(Object data) =>
      ApiResultState._(_factory.second(_Result(data)));

  factory ApiResultState.loading() =>
      ApiResultState._(_factory.third(_Loading()));
}

class _Loading {}

class _Result<T> {
  final T data;

  _Result(this.data);
}

class _Failed {
  final String exception;

  _Failed(this.exception);
}
