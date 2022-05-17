// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'network_exceptions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NetworkExceptions {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() requestCancelled,
    required TResult Function(Response<dynamic> response) httpError,
    required TResult Function() requestTimeout,
    required TResult Function() sendTimeout,
    required TResult Function() noInternetConnection,
    required TResult Function() formatException,
    required TResult Function() unableToProcess,
    required TResult Function() unexpectedError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? requestCancelled,
    TResult Function(Response<dynamic> response)? httpError,
    TResult Function()? requestTimeout,
    TResult Function()? sendTimeout,
    TResult Function()? noInternetConnection,
    TResult Function()? formatException,
    TResult Function()? unableToProcess,
    TResult Function()? unexpectedError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requestCancelled,
    TResult Function(Response<dynamic> response)? httpError,
    TResult Function()? requestTimeout,
    TResult Function()? sendTimeout,
    TResult Function()? noInternetConnection,
    TResult Function()? formatException,
    TResult Function()? unableToProcess,
    TResult Function()? unexpectedError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RequestCancelled value) requestCancelled,
    required TResult Function(HttpError value) httpError,
    required TResult Function(RequestTimeout value) requestTimeout,
    required TResult Function(SendTimeout value) sendTimeout,
    required TResult Function(NoInternetConnection value) noInternetConnection,
    required TResult Function(FormatException value) formatException,
    required TResult Function(UnableToProcess value) unableToProcess,
    required TResult Function(UnexpectedError value) unexpectedError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RequestCancelled value)? requestCancelled,
    TResult Function(HttpError value)? httpError,
    TResult Function(RequestTimeout value)? requestTimeout,
    TResult Function(SendTimeout value)? sendTimeout,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(FormatException value)? formatException,
    TResult Function(UnableToProcess value)? unableToProcess,
    TResult Function(UnexpectedError value)? unexpectedError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestCancelled value)? requestCancelled,
    TResult Function(HttpError value)? httpError,
    TResult Function(RequestTimeout value)? requestTimeout,
    TResult Function(SendTimeout value)? sendTimeout,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(FormatException value)? formatException,
    TResult Function(UnableToProcess value)? unableToProcess,
    TResult Function(UnexpectedError value)? unexpectedError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkExceptionsCopyWith<$Res> {
  factory $NetworkExceptionsCopyWith(
          NetworkExceptions value, $Res Function(NetworkExceptions) then) =
      _$NetworkExceptionsCopyWithImpl<$Res>;
}

/// @nodoc
class _$NetworkExceptionsCopyWithImpl<$Res>
    implements $NetworkExceptionsCopyWith<$Res> {
  _$NetworkExceptionsCopyWithImpl(this._value, this._then);

  final NetworkExceptions _value;
  // ignore: unused_field
  final $Res Function(NetworkExceptions) _then;
}

/// @nodoc
abstract class _$$RequestCancelledCopyWith<$Res> {
  factory _$$RequestCancelledCopyWith(
          _$RequestCancelled value, $Res Function(_$RequestCancelled) then) =
      __$$RequestCancelledCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RequestCancelledCopyWithImpl<$Res>
    extends _$NetworkExceptionsCopyWithImpl<$Res>
    implements _$$RequestCancelledCopyWith<$Res> {
  __$$RequestCancelledCopyWithImpl(
      _$RequestCancelled _value, $Res Function(_$RequestCancelled) _then)
      : super(_value, (v) => _then(v as _$RequestCancelled));

  @override
  _$RequestCancelled get _value => super._value as _$RequestCancelled;
}

/// @nodoc

class _$RequestCancelled
    with DiagnosticableTreeMixin
    implements RequestCancelled {
  const _$RequestCancelled();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NetworkExceptions.requestCancelled()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'NetworkExceptions.requestCancelled'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RequestCancelled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() requestCancelled,
    required TResult Function(Response<dynamic> response) httpError,
    required TResult Function() requestTimeout,
    required TResult Function() sendTimeout,
    required TResult Function() noInternetConnection,
    required TResult Function() formatException,
    required TResult Function() unableToProcess,
    required TResult Function() unexpectedError,
  }) {
    return requestCancelled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? requestCancelled,
    TResult Function(Response<dynamic> response)? httpError,
    TResult Function()? requestTimeout,
    TResult Function()? sendTimeout,
    TResult Function()? noInternetConnection,
    TResult Function()? formatException,
    TResult Function()? unableToProcess,
    TResult Function()? unexpectedError,
  }) {
    return requestCancelled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requestCancelled,
    TResult Function(Response<dynamic> response)? httpError,
    TResult Function()? requestTimeout,
    TResult Function()? sendTimeout,
    TResult Function()? noInternetConnection,
    TResult Function()? formatException,
    TResult Function()? unableToProcess,
    TResult Function()? unexpectedError,
    required TResult orElse(),
  }) {
    if (requestCancelled != null) {
      return requestCancelled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RequestCancelled value) requestCancelled,
    required TResult Function(HttpError value) httpError,
    required TResult Function(RequestTimeout value) requestTimeout,
    required TResult Function(SendTimeout value) sendTimeout,
    required TResult Function(NoInternetConnection value) noInternetConnection,
    required TResult Function(FormatException value) formatException,
    required TResult Function(UnableToProcess value) unableToProcess,
    required TResult Function(UnexpectedError value) unexpectedError,
  }) {
    return requestCancelled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RequestCancelled value)? requestCancelled,
    TResult Function(HttpError value)? httpError,
    TResult Function(RequestTimeout value)? requestTimeout,
    TResult Function(SendTimeout value)? sendTimeout,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(FormatException value)? formatException,
    TResult Function(UnableToProcess value)? unableToProcess,
    TResult Function(UnexpectedError value)? unexpectedError,
  }) {
    return requestCancelled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestCancelled value)? requestCancelled,
    TResult Function(HttpError value)? httpError,
    TResult Function(RequestTimeout value)? requestTimeout,
    TResult Function(SendTimeout value)? sendTimeout,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(FormatException value)? formatException,
    TResult Function(UnableToProcess value)? unableToProcess,
    TResult Function(UnexpectedError value)? unexpectedError,
    required TResult orElse(),
  }) {
    if (requestCancelled != null) {
      return requestCancelled(this);
    }
    return orElse();
  }
}

abstract class RequestCancelled implements NetworkExceptions {
  const factory RequestCancelled() = _$RequestCancelled;
}

/// @nodoc
abstract class _$$HttpErrorCopyWith<$Res> {
  factory _$$HttpErrorCopyWith(
          _$HttpError value, $Res Function(_$HttpError) then) =
      __$$HttpErrorCopyWithImpl<$Res>;
  $Res call({Response<dynamic> response});
}

/// @nodoc
class __$$HttpErrorCopyWithImpl<$Res>
    extends _$NetworkExceptionsCopyWithImpl<$Res>
    implements _$$HttpErrorCopyWith<$Res> {
  __$$HttpErrorCopyWithImpl(
      _$HttpError _value, $Res Function(_$HttpError) _then)
      : super(_value, (v) => _then(v as _$HttpError));

  @override
  _$HttpError get _value => super._value as _$HttpError;

  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_$HttpError(
      response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as Response<dynamic>,
    ));
  }
}

/// @nodoc

class _$HttpError with DiagnosticableTreeMixin implements HttpError {
  const _$HttpError(this.response);

  @override
  final Response<dynamic> response;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NetworkExceptions.httpError(response: $response)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NetworkExceptions.httpError'))
      ..add(DiagnosticsProperty('response', response));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HttpError &&
            const DeepCollectionEquality().equals(other.response, response));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(response));

  @JsonKey(ignore: true)
  @override
  _$$HttpErrorCopyWith<_$HttpError> get copyWith =>
      __$$HttpErrorCopyWithImpl<_$HttpError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() requestCancelled,
    required TResult Function(Response<dynamic> response) httpError,
    required TResult Function() requestTimeout,
    required TResult Function() sendTimeout,
    required TResult Function() noInternetConnection,
    required TResult Function() formatException,
    required TResult Function() unableToProcess,
    required TResult Function() unexpectedError,
  }) {
    return httpError(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? requestCancelled,
    TResult Function(Response<dynamic> response)? httpError,
    TResult Function()? requestTimeout,
    TResult Function()? sendTimeout,
    TResult Function()? noInternetConnection,
    TResult Function()? formatException,
    TResult Function()? unableToProcess,
    TResult Function()? unexpectedError,
  }) {
    return httpError?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requestCancelled,
    TResult Function(Response<dynamic> response)? httpError,
    TResult Function()? requestTimeout,
    TResult Function()? sendTimeout,
    TResult Function()? noInternetConnection,
    TResult Function()? formatException,
    TResult Function()? unableToProcess,
    TResult Function()? unexpectedError,
    required TResult orElse(),
  }) {
    if (httpError != null) {
      return httpError(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RequestCancelled value) requestCancelled,
    required TResult Function(HttpError value) httpError,
    required TResult Function(RequestTimeout value) requestTimeout,
    required TResult Function(SendTimeout value) sendTimeout,
    required TResult Function(NoInternetConnection value) noInternetConnection,
    required TResult Function(FormatException value) formatException,
    required TResult Function(UnableToProcess value) unableToProcess,
    required TResult Function(UnexpectedError value) unexpectedError,
  }) {
    return httpError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RequestCancelled value)? requestCancelled,
    TResult Function(HttpError value)? httpError,
    TResult Function(RequestTimeout value)? requestTimeout,
    TResult Function(SendTimeout value)? sendTimeout,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(FormatException value)? formatException,
    TResult Function(UnableToProcess value)? unableToProcess,
    TResult Function(UnexpectedError value)? unexpectedError,
  }) {
    return httpError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestCancelled value)? requestCancelled,
    TResult Function(HttpError value)? httpError,
    TResult Function(RequestTimeout value)? requestTimeout,
    TResult Function(SendTimeout value)? sendTimeout,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(FormatException value)? formatException,
    TResult Function(UnableToProcess value)? unableToProcess,
    TResult Function(UnexpectedError value)? unexpectedError,
    required TResult orElse(),
  }) {
    if (httpError != null) {
      return httpError(this);
    }
    return orElse();
  }
}

abstract class HttpError implements NetworkExceptions {
  const factory HttpError(final Response<dynamic> response) = _$HttpError;

  Response<dynamic> get response => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$HttpErrorCopyWith<_$HttpError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RequestTimeoutCopyWith<$Res> {
  factory _$$RequestTimeoutCopyWith(
          _$RequestTimeout value, $Res Function(_$RequestTimeout) then) =
      __$$RequestTimeoutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RequestTimeoutCopyWithImpl<$Res>
    extends _$NetworkExceptionsCopyWithImpl<$Res>
    implements _$$RequestTimeoutCopyWith<$Res> {
  __$$RequestTimeoutCopyWithImpl(
      _$RequestTimeout _value, $Res Function(_$RequestTimeout) _then)
      : super(_value, (v) => _then(v as _$RequestTimeout));

  @override
  _$RequestTimeout get _value => super._value as _$RequestTimeout;
}

/// @nodoc

class _$RequestTimeout with DiagnosticableTreeMixin implements RequestTimeout {
  const _$RequestTimeout();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NetworkExceptions.requestTimeout()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'NetworkExceptions.requestTimeout'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RequestTimeout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() requestCancelled,
    required TResult Function(Response<dynamic> response) httpError,
    required TResult Function() requestTimeout,
    required TResult Function() sendTimeout,
    required TResult Function() noInternetConnection,
    required TResult Function() formatException,
    required TResult Function() unableToProcess,
    required TResult Function() unexpectedError,
  }) {
    return requestTimeout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? requestCancelled,
    TResult Function(Response<dynamic> response)? httpError,
    TResult Function()? requestTimeout,
    TResult Function()? sendTimeout,
    TResult Function()? noInternetConnection,
    TResult Function()? formatException,
    TResult Function()? unableToProcess,
    TResult Function()? unexpectedError,
  }) {
    return requestTimeout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requestCancelled,
    TResult Function(Response<dynamic> response)? httpError,
    TResult Function()? requestTimeout,
    TResult Function()? sendTimeout,
    TResult Function()? noInternetConnection,
    TResult Function()? formatException,
    TResult Function()? unableToProcess,
    TResult Function()? unexpectedError,
    required TResult orElse(),
  }) {
    if (requestTimeout != null) {
      return requestTimeout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RequestCancelled value) requestCancelled,
    required TResult Function(HttpError value) httpError,
    required TResult Function(RequestTimeout value) requestTimeout,
    required TResult Function(SendTimeout value) sendTimeout,
    required TResult Function(NoInternetConnection value) noInternetConnection,
    required TResult Function(FormatException value) formatException,
    required TResult Function(UnableToProcess value) unableToProcess,
    required TResult Function(UnexpectedError value) unexpectedError,
  }) {
    return requestTimeout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RequestCancelled value)? requestCancelled,
    TResult Function(HttpError value)? httpError,
    TResult Function(RequestTimeout value)? requestTimeout,
    TResult Function(SendTimeout value)? sendTimeout,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(FormatException value)? formatException,
    TResult Function(UnableToProcess value)? unableToProcess,
    TResult Function(UnexpectedError value)? unexpectedError,
  }) {
    return requestTimeout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestCancelled value)? requestCancelled,
    TResult Function(HttpError value)? httpError,
    TResult Function(RequestTimeout value)? requestTimeout,
    TResult Function(SendTimeout value)? sendTimeout,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(FormatException value)? formatException,
    TResult Function(UnableToProcess value)? unableToProcess,
    TResult Function(UnexpectedError value)? unexpectedError,
    required TResult orElse(),
  }) {
    if (requestTimeout != null) {
      return requestTimeout(this);
    }
    return orElse();
  }
}

abstract class RequestTimeout implements NetworkExceptions {
  const factory RequestTimeout() = _$RequestTimeout;
}

/// @nodoc
abstract class _$$SendTimeoutCopyWith<$Res> {
  factory _$$SendTimeoutCopyWith(
          _$SendTimeout value, $Res Function(_$SendTimeout) then) =
      __$$SendTimeoutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SendTimeoutCopyWithImpl<$Res>
    extends _$NetworkExceptionsCopyWithImpl<$Res>
    implements _$$SendTimeoutCopyWith<$Res> {
  __$$SendTimeoutCopyWithImpl(
      _$SendTimeout _value, $Res Function(_$SendTimeout) _then)
      : super(_value, (v) => _then(v as _$SendTimeout));

  @override
  _$SendTimeout get _value => super._value as _$SendTimeout;
}

/// @nodoc

class _$SendTimeout with DiagnosticableTreeMixin implements SendTimeout {
  const _$SendTimeout();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NetworkExceptions.sendTimeout()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'NetworkExceptions.sendTimeout'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SendTimeout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() requestCancelled,
    required TResult Function(Response<dynamic> response) httpError,
    required TResult Function() requestTimeout,
    required TResult Function() sendTimeout,
    required TResult Function() noInternetConnection,
    required TResult Function() formatException,
    required TResult Function() unableToProcess,
    required TResult Function() unexpectedError,
  }) {
    return sendTimeout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? requestCancelled,
    TResult Function(Response<dynamic> response)? httpError,
    TResult Function()? requestTimeout,
    TResult Function()? sendTimeout,
    TResult Function()? noInternetConnection,
    TResult Function()? formatException,
    TResult Function()? unableToProcess,
    TResult Function()? unexpectedError,
  }) {
    return sendTimeout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requestCancelled,
    TResult Function(Response<dynamic> response)? httpError,
    TResult Function()? requestTimeout,
    TResult Function()? sendTimeout,
    TResult Function()? noInternetConnection,
    TResult Function()? formatException,
    TResult Function()? unableToProcess,
    TResult Function()? unexpectedError,
    required TResult orElse(),
  }) {
    if (sendTimeout != null) {
      return sendTimeout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RequestCancelled value) requestCancelled,
    required TResult Function(HttpError value) httpError,
    required TResult Function(RequestTimeout value) requestTimeout,
    required TResult Function(SendTimeout value) sendTimeout,
    required TResult Function(NoInternetConnection value) noInternetConnection,
    required TResult Function(FormatException value) formatException,
    required TResult Function(UnableToProcess value) unableToProcess,
    required TResult Function(UnexpectedError value) unexpectedError,
  }) {
    return sendTimeout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RequestCancelled value)? requestCancelled,
    TResult Function(HttpError value)? httpError,
    TResult Function(RequestTimeout value)? requestTimeout,
    TResult Function(SendTimeout value)? sendTimeout,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(FormatException value)? formatException,
    TResult Function(UnableToProcess value)? unableToProcess,
    TResult Function(UnexpectedError value)? unexpectedError,
  }) {
    return sendTimeout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestCancelled value)? requestCancelled,
    TResult Function(HttpError value)? httpError,
    TResult Function(RequestTimeout value)? requestTimeout,
    TResult Function(SendTimeout value)? sendTimeout,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(FormatException value)? formatException,
    TResult Function(UnableToProcess value)? unableToProcess,
    TResult Function(UnexpectedError value)? unexpectedError,
    required TResult orElse(),
  }) {
    if (sendTimeout != null) {
      return sendTimeout(this);
    }
    return orElse();
  }
}

abstract class SendTimeout implements NetworkExceptions {
  const factory SendTimeout() = _$SendTimeout;
}

/// @nodoc
abstract class _$$NoInternetConnectionCopyWith<$Res> {
  factory _$$NoInternetConnectionCopyWith(_$NoInternetConnection value,
          $Res Function(_$NoInternetConnection) then) =
      __$$NoInternetConnectionCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoInternetConnectionCopyWithImpl<$Res>
    extends _$NetworkExceptionsCopyWithImpl<$Res>
    implements _$$NoInternetConnectionCopyWith<$Res> {
  __$$NoInternetConnectionCopyWithImpl(_$NoInternetConnection _value,
      $Res Function(_$NoInternetConnection) _then)
      : super(_value, (v) => _then(v as _$NoInternetConnection));

  @override
  _$NoInternetConnection get _value => super._value as _$NoInternetConnection;
}

/// @nodoc

class _$NoInternetConnection
    with DiagnosticableTreeMixin
    implements NoInternetConnection {
  const _$NoInternetConnection();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NetworkExceptions.noInternetConnection()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty('type', 'NetworkExceptions.noInternetConnection'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoInternetConnection);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() requestCancelled,
    required TResult Function(Response<dynamic> response) httpError,
    required TResult Function() requestTimeout,
    required TResult Function() sendTimeout,
    required TResult Function() noInternetConnection,
    required TResult Function() formatException,
    required TResult Function() unableToProcess,
    required TResult Function() unexpectedError,
  }) {
    return noInternetConnection();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? requestCancelled,
    TResult Function(Response<dynamic> response)? httpError,
    TResult Function()? requestTimeout,
    TResult Function()? sendTimeout,
    TResult Function()? noInternetConnection,
    TResult Function()? formatException,
    TResult Function()? unableToProcess,
    TResult Function()? unexpectedError,
  }) {
    return noInternetConnection?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requestCancelled,
    TResult Function(Response<dynamic> response)? httpError,
    TResult Function()? requestTimeout,
    TResult Function()? sendTimeout,
    TResult Function()? noInternetConnection,
    TResult Function()? formatException,
    TResult Function()? unableToProcess,
    TResult Function()? unexpectedError,
    required TResult orElse(),
  }) {
    if (noInternetConnection != null) {
      return noInternetConnection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RequestCancelled value) requestCancelled,
    required TResult Function(HttpError value) httpError,
    required TResult Function(RequestTimeout value) requestTimeout,
    required TResult Function(SendTimeout value) sendTimeout,
    required TResult Function(NoInternetConnection value) noInternetConnection,
    required TResult Function(FormatException value) formatException,
    required TResult Function(UnableToProcess value) unableToProcess,
    required TResult Function(UnexpectedError value) unexpectedError,
  }) {
    return noInternetConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RequestCancelled value)? requestCancelled,
    TResult Function(HttpError value)? httpError,
    TResult Function(RequestTimeout value)? requestTimeout,
    TResult Function(SendTimeout value)? sendTimeout,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(FormatException value)? formatException,
    TResult Function(UnableToProcess value)? unableToProcess,
    TResult Function(UnexpectedError value)? unexpectedError,
  }) {
    return noInternetConnection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestCancelled value)? requestCancelled,
    TResult Function(HttpError value)? httpError,
    TResult Function(RequestTimeout value)? requestTimeout,
    TResult Function(SendTimeout value)? sendTimeout,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(FormatException value)? formatException,
    TResult Function(UnableToProcess value)? unableToProcess,
    TResult Function(UnexpectedError value)? unexpectedError,
    required TResult orElse(),
  }) {
    if (noInternetConnection != null) {
      return noInternetConnection(this);
    }
    return orElse();
  }
}

abstract class NoInternetConnection implements NetworkExceptions {
  const factory NoInternetConnection() = _$NoInternetConnection;
}

/// @nodoc
abstract class _$$FormatExceptionCopyWith<$Res> {
  factory _$$FormatExceptionCopyWith(
          _$FormatException value, $Res Function(_$FormatException) then) =
      __$$FormatExceptionCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FormatExceptionCopyWithImpl<$Res>
    extends _$NetworkExceptionsCopyWithImpl<$Res>
    implements _$$FormatExceptionCopyWith<$Res> {
  __$$FormatExceptionCopyWithImpl(
      _$FormatException _value, $Res Function(_$FormatException) _then)
      : super(_value, (v) => _then(v as _$FormatException));

  @override
  _$FormatException get _value => super._value as _$FormatException;
}

/// @nodoc

class _$FormatException
    with DiagnosticableTreeMixin
    implements FormatException {
  const _$FormatException();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NetworkExceptions.formatException()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'NetworkExceptions.formatException'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FormatException);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() requestCancelled,
    required TResult Function(Response<dynamic> response) httpError,
    required TResult Function() requestTimeout,
    required TResult Function() sendTimeout,
    required TResult Function() noInternetConnection,
    required TResult Function() formatException,
    required TResult Function() unableToProcess,
    required TResult Function() unexpectedError,
  }) {
    return formatException();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? requestCancelled,
    TResult Function(Response<dynamic> response)? httpError,
    TResult Function()? requestTimeout,
    TResult Function()? sendTimeout,
    TResult Function()? noInternetConnection,
    TResult Function()? formatException,
    TResult Function()? unableToProcess,
    TResult Function()? unexpectedError,
  }) {
    return formatException?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requestCancelled,
    TResult Function(Response<dynamic> response)? httpError,
    TResult Function()? requestTimeout,
    TResult Function()? sendTimeout,
    TResult Function()? noInternetConnection,
    TResult Function()? formatException,
    TResult Function()? unableToProcess,
    TResult Function()? unexpectedError,
    required TResult orElse(),
  }) {
    if (formatException != null) {
      return formatException();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RequestCancelled value) requestCancelled,
    required TResult Function(HttpError value) httpError,
    required TResult Function(RequestTimeout value) requestTimeout,
    required TResult Function(SendTimeout value) sendTimeout,
    required TResult Function(NoInternetConnection value) noInternetConnection,
    required TResult Function(FormatException value) formatException,
    required TResult Function(UnableToProcess value) unableToProcess,
    required TResult Function(UnexpectedError value) unexpectedError,
  }) {
    return formatException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RequestCancelled value)? requestCancelled,
    TResult Function(HttpError value)? httpError,
    TResult Function(RequestTimeout value)? requestTimeout,
    TResult Function(SendTimeout value)? sendTimeout,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(FormatException value)? formatException,
    TResult Function(UnableToProcess value)? unableToProcess,
    TResult Function(UnexpectedError value)? unexpectedError,
  }) {
    return formatException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestCancelled value)? requestCancelled,
    TResult Function(HttpError value)? httpError,
    TResult Function(RequestTimeout value)? requestTimeout,
    TResult Function(SendTimeout value)? sendTimeout,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(FormatException value)? formatException,
    TResult Function(UnableToProcess value)? unableToProcess,
    TResult Function(UnexpectedError value)? unexpectedError,
    required TResult orElse(),
  }) {
    if (formatException != null) {
      return formatException(this);
    }
    return orElse();
  }
}

abstract class FormatException implements NetworkExceptions {
  const factory FormatException() = _$FormatException;
}

/// @nodoc
abstract class _$$UnableToProcessCopyWith<$Res> {
  factory _$$UnableToProcessCopyWith(
          _$UnableToProcess value, $Res Function(_$UnableToProcess) then) =
      __$$UnableToProcessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnableToProcessCopyWithImpl<$Res>
    extends _$NetworkExceptionsCopyWithImpl<$Res>
    implements _$$UnableToProcessCopyWith<$Res> {
  __$$UnableToProcessCopyWithImpl(
      _$UnableToProcess _value, $Res Function(_$UnableToProcess) _then)
      : super(_value, (v) => _then(v as _$UnableToProcess));

  @override
  _$UnableToProcess get _value => super._value as _$UnableToProcess;
}

/// @nodoc

class _$UnableToProcess
    with DiagnosticableTreeMixin
    implements UnableToProcess {
  const _$UnableToProcess();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NetworkExceptions.unableToProcess()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'NetworkExceptions.unableToProcess'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnableToProcess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() requestCancelled,
    required TResult Function(Response<dynamic> response) httpError,
    required TResult Function() requestTimeout,
    required TResult Function() sendTimeout,
    required TResult Function() noInternetConnection,
    required TResult Function() formatException,
    required TResult Function() unableToProcess,
    required TResult Function() unexpectedError,
  }) {
    return unableToProcess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? requestCancelled,
    TResult Function(Response<dynamic> response)? httpError,
    TResult Function()? requestTimeout,
    TResult Function()? sendTimeout,
    TResult Function()? noInternetConnection,
    TResult Function()? formatException,
    TResult Function()? unableToProcess,
    TResult Function()? unexpectedError,
  }) {
    return unableToProcess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requestCancelled,
    TResult Function(Response<dynamic> response)? httpError,
    TResult Function()? requestTimeout,
    TResult Function()? sendTimeout,
    TResult Function()? noInternetConnection,
    TResult Function()? formatException,
    TResult Function()? unableToProcess,
    TResult Function()? unexpectedError,
    required TResult orElse(),
  }) {
    if (unableToProcess != null) {
      return unableToProcess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RequestCancelled value) requestCancelled,
    required TResult Function(HttpError value) httpError,
    required TResult Function(RequestTimeout value) requestTimeout,
    required TResult Function(SendTimeout value) sendTimeout,
    required TResult Function(NoInternetConnection value) noInternetConnection,
    required TResult Function(FormatException value) formatException,
    required TResult Function(UnableToProcess value) unableToProcess,
    required TResult Function(UnexpectedError value) unexpectedError,
  }) {
    return unableToProcess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RequestCancelled value)? requestCancelled,
    TResult Function(HttpError value)? httpError,
    TResult Function(RequestTimeout value)? requestTimeout,
    TResult Function(SendTimeout value)? sendTimeout,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(FormatException value)? formatException,
    TResult Function(UnableToProcess value)? unableToProcess,
    TResult Function(UnexpectedError value)? unexpectedError,
  }) {
    return unableToProcess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestCancelled value)? requestCancelled,
    TResult Function(HttpError value)? httpError,
    TResult Function(RequestTimeout value)? requestTimeout,
    TResult Function(SendTimeout value)? sendTimeout,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(FormatException value)? formatException,
    TResult Function(UnableToProcess value)? unableToProcess,
    TResult Function(UnexpectedError value)? unexpectedError,
    required TResult orElse(),
  }) {
    if (unableToProcess != null) {
      return unableToProcess(this);
    }
    return orElse();
  }
}

abstract class UnableToProcess implements NetworkExceptions {
  const factory UnableToProcess() = _$UnableToProcess;
}

/// @nodoc
abstract class _$$UnexpectedErrorCopyWith<$Res> {
  factory _$$UnexpectedErrorCopyWith(
          _$UnexpectedError value, $Res Function(_$UnexpectedError) then) =
      __$$UnexpectedErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnexpectedErrorCopyWithImpl<$Res>
    extends _$NetworkExceptionsCopyWithImpl<$Res>
    implements _$$UnexpectedErrorCopyWith<$Res> {
  __$$UnexpectedErrorCopyWithImpl(
      _$UnexpectedError _value, $Res Function(_$UnexpectedError) _then)
      : super(_value, (v) => _then(v as _$UnexpectedError));

  @override
  _$UnexpectedError get _value => super._value as _$UnexpectedError;
}

/// @nodoc

class _$UnexpectedError
    with DiagnosticableTreeMixin
    implements UnexpectedError {
  const _$UnexpectedError();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NetworkExceptions.unexpectedError()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'NetworkExceptions.unexpectedError'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnexpectedError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() requestCancelled,
    required TResult Function(Response<dynamic> response) httpError,
    required TResult Function() requestTimeout,
    required TResult Function() sendTimeout,
    required TResult Function() noInternetConnection,
    required TResult Function() formatException,
    required TResult Function() unableToProcess,
    required TResult Function() unexpectedError,
  }) {
    return unexpectedError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? requestCancelled,
    TResult Function(Response<dynamic> response)? httpError,
    TResult Function()? requestTimeout,
    TResult Function()? sendTimeout,
    TResult Function()? noInternetConnection,
    TResult Function()? formatException,
    TResult Function()? unableToProcess,
    TResult Function()? unexpectedError,
  }) {
    return unexpectedError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requestCancelled,
    TResult Function(Response<dynamic> response)? httpError,
    TResult Function()? requestTimeout,
    TResult Function()? sendTimeout,
    TResult Function()? noInternetConnection,
    TResult Function()? formatException,
    TResult Function()? unableToProcess,
    TResult Function()? unexpectedError,
    required TResult orElse(),
  }) {
    if (unexpectedError != null) {
      return unexpectedError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RequestCancelled value) requestCancelled,
    required TResult Function(HttpError value) httpError,
    required TResult Function(RequestTimeout value) requestTimeout,
    required TResult Function(SendTimeout value) sendTimeout,
    required TResult Function(NoInternetConnection value) noInternetConnection,
    required TResult Function(FormatException value) formatException,
    required TResult Function(UnableToProcess value) unableToProcess,
    required TResult Function(UnexpectedError value) unexpectedError,
  }) {
    return unexpectedError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RequestCancelled value)? requestCancelled,
    TResult Function(HttpError value)? httpError,
    TResult Function(RequestTimeout value)? requestTimeout,
    TResult Function(SendTimeout value)? sendTimeout,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(FormatException value)? formatException,
    TResult Function(UnableToProcess value)? unableToProcess,
    TResult Function(UnexpectedError value)? unexpectedError,
  }) {
    return unexpectedError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestCancelled value)? requestCancelled,
    TResult Function(HttpError value)? httpError,
    TResult Function(RequestTimeout value)? requestTimeout,
    TResult Function(SendTimeout value)? sendTimeout,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(FormatException value)? formatException,
    TResult Function(UnableToProcess value)? unableToProcess,
    TResult Function(UnexpectedError value)? unexpectedError,
    required TResult orElse(),
  }) {
    if (unexpectedError != null) {
      return unexpectedError(this);
    }
    return orElse();
  }
}

abstract class UnexpectedError implements NetworkExceptions {
  const factory UnexpectedError() = _$UnexpectedError;
}
