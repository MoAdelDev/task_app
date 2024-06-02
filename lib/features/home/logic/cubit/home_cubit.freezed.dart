// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int index) selectTaskFilter,
    required TResult Function(bool isFormHidded) changeCreateTaskState,
    required TResult Function() loading,
    required TResult Function(TaskModel? task) createTaskSuccess,
    required TResult Function(String? message) createTaskFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int index)? selectTaskFilter,
    TResult? Function(bool isFormHidded)? changeCreateTaskState,
    TResult? Function()? loading,
    TResult? Function(TaskModel? task)? createTaskSuccess,
    TResult? Function(String? message)? createTaskFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int index)? selectTaskFilter,
    TResult Function(bool isFormHidded)? changeCreateTaskState,
    TResult Function()? loading,
    TResult Function(TaskModel? task)? createTaskSuccess,
    TResult Function(String? message)? createTaskFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SelectTaskFilter value) selectTaskFilter,
    required TResult Function(ChangeCreateTaskState value)
        changeCreateTaskState,
    required TResult Function(CreateTaskLoading value) loading,
    required TResult Function(CreateTaskSuccess value) createTaskSuccess,
    required TResult Function(CreateTaskFailure value) createTaskFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SelectTaskFilter value)? selectTaskFilter,
    TResult? Function(ChangeCreateTaskState value)? changeCreateTaskState,
    TResult? Function(CreateTaskLoading value)? loading,
    TResult? Function(CreateTaskSuccess value)? createTaskSuccess,
    TResult? Function(CreateTaskFailure value)? createTaskFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SelectTaskFilter value)? selectTaskFilter,
    TResult Function(ChangeCreateTaskState value)? changeCreateTaskState,
    TResult Function(CreateTaskLoading value)? loading,
    TResult Function(CreateTaskSuccess value)? createTaskSuccess,
    TResult Function(CreateTaskFailure value)? createTaskFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'HomeState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int index) selectTaskFilter,
    required TResult Function(bool isFormHidded) changeCreateTaskState,
    required TResult Function() loading,
    required TResult Function(TaskModel? task) createTaskSuccess,
    required TResult Function(String? message) createTaskFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int index)? selectTaskFilter,
    TResult? Function(bool isFormHidded)? changeCreateTaskState,
    TResult? Function()? loading,
    TResult? Function(TaskModel? task)? createTaskSuccess,
    TResult? Function(String? message)? createTaskFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int index)? selectTaskFilter,
    TResult Function(bool isFormHidded)? changeCreateTaskState,
    TResult Function()? loading,
    TResult Function(TaskModel? task)? createTaskSuccess,
    TResult Function(String? message)? createTaskFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SelectTaskFilter value) selectTaskFilter,
    required TResult Function(ChangeCreateTaskState value)
        changeCreateTaskState,
    required TResult Function(CreateTaskLoading value) loading,
    required TResult Function(CreateTaskSuccess value) createTaskSuccess,
    required TResult Function(CreateTaskFailure value) createTaskFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SelectTaskFilter value)? selectTaskFilter,
    TResult? Function(ChangeCreateTaskState value)? changeCreateTaskState,
    TResult? Function(CreateTaskLoading value)? loading,
    TResult? Function(CreateTaskSuccess value)? createTaskSuccess,
    TResult? Function(CreateTaskFailure value)? createTaskFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SelectTaskFilter value)? selectTaskFilter,
    TResult Function(ChangeCreateTaskState value)? changeCreateTaskState,
    TResult Function(CreateTaskLoading value)? loading,
    TResult Function(CreateTaskSuccess value)? createTaskSuccess,
    TResult Function(CreateTaskFailure value)? createTaskFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements HomeState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$SelectTaskFilterImplCopyWith<$Res> {
  factory _$$SelectTaskFilterImplCopyWith(_$SelectTaskFilterImpl value,
          $Res Function(_$SelectTaskFilterImpl) then) =
      __$$SelectTaskFilterImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$SelectTaskFilterImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$SelectTaskFilterImpl>
    implements _$$SelectTaskFilterImplCopyWith<$Res> {
  __$$SelectTaskFilterImplCopyWithImpl(_$SelectTaskFilterImpl _value,
      $Res Function(_$SelectTaskFilterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$SelectTaskFilterImpl(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SelectTaskFilterImpl implements SelectTaskFilter {
  const _$SelectTaskFilterImpl(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'HomeState.selectTaskFilter(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectTaskFilterImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectTaskFilterImplCopyWith<_$SelectTaskFilterImpl> get copyWith =>
      __$$SelectTaskFilterImplCopyWithImpl<_$SelectTaskFilterImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int index) selectTaskFilter,
    required TResult Function(bool isFormHidded) changeCreateTaskState,
    required TResult Function() loading,
    required TResult Function(TaskModel? task) createTaskSuccess,
    required TResult Function(String? message) createTaskFailure,
  }) {
    return selectTaskFilter(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int index)? selectTaskFilter,
    TResult? Function(bool isFormHidded)? changeCreateTaskState,
    TResult? Function()? loading,
    TResult? Function(TaskModel? task)? createTaskSuccess,
    TResult? Function(String? message)? createTaskFailure,
  }) {
    return selectTaskFilter?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int index)? selectTaskFilter,
    TResult Function(bool isFormHidded)? changeCreateTaskState,
    TResult Function()? loading,
    TResult Function(TaskModel? task)? createTaskSuccess,
    TResult Function(String? message)? createTaskFailure,
    required TResult orElse(),
  }) {
    if (selectTaskFilter != null) {
      return selectTaskFilter(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SelectTaskFilter value) selectTaskFilter,
    required TResult Function(ChangeCreateTaskState value)
        changeCreateTaskState,
    required TResult Function(CreateTaskLoading value) loading,
    required TResult Function(CreateTaskSuccess value) createTaskSuccess,
    required TResult Function(CreateTaskFailure value) createTaskFailure,
  }) {
    return selectTaskFilter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SelectTaskFilter value)? selectTaskFilter,
    TResult? Function(ChangeCreateTaskState value)? changeCreateTaskState,
    TResult? Function(CreateTaskLoading value)? loading,
    TResult? Function(CreateTaskSuccess value)? createTaskSuccess,
    TResult? Function(CreateTaskFailure value)? createTaskFailure,
  }) {
    return selectTaskFilter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SelectTaskFilter value)? selectTaskFilter,
    TResult Function(ChangeCreateTaskState value)? changeCreateTaskState,
    TResult Function(CreateTaskLoading value)? loading,
    TResult Function(CreateTaskSuccess value)? createTaskSuccess,
    TResult Function(CreateTaskFailure value)? createTaskFailure,
    required TResult orElse(),
  }) {
    if (selectTaskFilter != null) {
      return selectTaskFilter(this);
    }
    return orElse();
  }
}

abstract class SelectTaskFilter implements HomeState {
  const factory SelectTaskFilter(final int index) = _$SelectTaskFilterImpl;

  int get index;
  @JsonKey(ignore: true)
  _$$SelectTaskFilterImplCopyWith<_$SelectTaskFilterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeCreateTaskStateImplCopyWith<$Res> {
  factory _$$ChangeCreateTaskStateImplCopyWith(
          _$ChangeCreateTaskStateImpl value,
          $Res Function(_$ChangeCreateTaskStateImpl) then) =
      __$$ChangeCreateTaskStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isFormHidded});
}

/// @nodoc
class __$$ChangeCreateTaskStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$ChangeCreateTaskStateImpl>
    implements _$$ChangeCreateTaskStateImplCopyWith<$Res> {
  __$$ChangeCreateTaskStateImplCopyWithImpl(_$ChangeCreateTaskStateImpl _value,
      $Res Function(_$ChangeCreateTaskStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isFormHidded = null,
  }) {
    return _then(_$ChangeCreateTaskStateImpl(
      null == isFormHidded
          ? _value.isFormHidded
          : isFormHidded // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ChangeCreateTaskStateImpl implements ChangeCreateTaskState {
  const _$ChangeCreateTaskStateImpl(this.isFormHidded);

  @override
  final bool isFormHidded;

  @override
  String toString() {
    return 'HomeState.changeCreateTaskState(isFormHidded: $isFormHidded)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeCreateTaskStateImpl &&
            (identical(other.isFormHidded, isFormHidded) ||
                other.isFormHidded == isFormHidded));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isFormHidded);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeCreateTaskStateImplCopyWith<_$ChangeCreateTaskStateImpl>
      get copyWith => __$$ChangeCreateTaskStateImplCopyWithImpl<
          _$ChangeCreateTaskStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int index) selectTaskFilter,
    required TResult Function(bool isFormHidded) changeCreateTaskState,
    required TResult Function() loading,
    required TResult Function(TaskModel? task) createTaskSuccess,
    required TResult Function(String? message) createTaskFailure,
  }) {
    return changeCreateTaskState(isFormHidded);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int index)? selectTaskFilter,
    TResult? Function(bool isFormHidded)? changeCreateTaskState,
    TResult? Function()? loading,
    TResult? Function(TaskModel? task)? createTaskSuccess,
    TResult? Function(String? message)? createTaskFailure,
  }) {
    return changeCreateTaskState?.call(isFormHidded);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int index)? selectTaskFilter,
    TResult Function(bool isFormHidded)? changeCreateTaskState,
    TResult Function()? loading,
    TResult Function(TaskModel? task)? createTaskSuccess,
    TResult Function(String? message)? createTaskFailure,
    required TResult orElse(),
  }) {
    if (changeCreateTaskState != null) {
      return changeCreateTaskState(isFormHidded);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SelectTaskFilter value) selectTaskFilter,
    required TResult Function(ChangeCreateTaskState value)
        changeCreateTaskState,
    required TResult Function(CreateTaskLoading value) loading,
    required TResult Function(CreateTaskSuccess value) createTaskSuccess,
    required TResult Function(CreateTaskFailure value) createTaskFailure,
  }) {
    return changeCreateTaskState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SelectTaskFilter value)? selectTaskFilter,
    TResult? Function(ChangeCreateTaskState value)? changeCreateTaskState,
    TResult? Function(CreateTaskLoading value)? loading,
    TResult? Function(CreateTaskSuccess value)? createTaskSuccess,
    TResult? Function(CreateTaskFailure value)? createTaskFailure,
  }) {
    return changeCreateTaskState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SelectTaskFilter value)? selectTaskFilter,
    TResult Function(ChangeCreateTaskState value)? changeCreateTaskState,
    TResult Function(CreateTaskLoading value)? loading,
    TResult Function(CreateTaskSuccess value)? createTaskSuccess,
    TResult Function(CreateTaskFailure value)? createTaskFailure,
    required TResult orElse(),
  }) {
    if (changeCreateTaskState != null) {
      return changeCreateTaskState(this);
    }
    return orElse();
  }
}

abstract class ChangeCreateTaskState implements HomeState {
  const factory ChangeCreateTaskState(final bool isFormHidded) =
      _$ChangeCreateTaskStateImpl;

  bool get isFormHidded;
  @JsonKey(ignore: true)
  _$$ChangeCreateTaskStateImplCopyWith<_$ChangeCreateTaskStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements CreateTaskLoading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'HomeState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int index) selectTaskFilter,
    required TResult Function(bool isFormHidded) changeCreateTaskState,
    required TResult Function() loading,
    required TResult Function(TaskModel? task) createTaskSuccess,
    required TResult Function(String? message) createTaskFailure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int index)? selectTaskFilter,
    TResult? Function(bool isFormHidded)? changeCreateTaskState,
    TResult? Function()? loading,
    TResult? Function(TaskModel? task)? createTaskSuccess,
    TResult? Function(String? message)? createTaskFailure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int index)? selectTaskFilter,
    TResult Function(bool isFormHidded)? changeCreateTaskState,
    TResult Function()? loading,
    TResult Function(TaskModel? task)? createTaskSuccess,
    TResult Function(String? message)? createTaskFailure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SelectTaskFilter value) selectTaskFilter,
    required TResult Function(ChangeCreateTaskState value)
        changeCreateTaskState,
    required TResult Function(CreateTaskLoading value) loading,
    required TResult Function(CreateTaskSuccess value) createTaskSuccess,
    required TResult Function(CreateTaskFailure value) createTaskFailure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SelectTaskFilter value)? selectTaskFilter,
    TResult? Function(ChangeCreateTaskState value)? changeCreateTaskState,
    TResult? Function(CreateTaskLoading value)? loading,
    TResult? Function(CreateTaskSuccess value)? createTaskSuccess,
    TResult? Function(CreateTaskFailure value)? createTaskFailure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SelectTaskFilter value)? selectTaskFilter,
    TResult Function(ChangeCreateTaskState value)? changeCreateTaskState,
    TResult Function(CreateTaskLoading value)? loading,
    TResult Function(CreateTaskSuccess value)? createTaskSuccess,
    TResult Function(CreateTaskFailure value)? createTaskFailure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CreateTaskLoading implements HomeState {
  const factory CreateTaskLoading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$CreateTaskSuccessImplCopyWith<$Res> {
  factory _$$CreateTaskSuccessImplCopyWith(_$CreateTaskSuccessImpl value,
          $Res Function(_$CreateTaskSuccessImpl) then) =
      __$$CreateTaskSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TaskModel? task});
}

/// @nodoc
class __$$CreateTaskSuccessImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$CreateTaskSuccessImpl>
    implements _$$CreateTaskSuccessImplCopyWith<$Res> {
  __$$CreateTaskSuccessImplCopyWithImpl(_$CreateTaskSuccessImpl _value,
      $Res Function(_$CreateTaskSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = freezed,
  }) {
    return _then(_$CreateTaskSuccessImpl(
      freezed == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as TaskModel?,
    ));
  }
}

/// @nodoc

class _$CreateTaskSuccessImpl implements CreateTaskSuccess {
  const _$CreateTaskSuccessImpl(this.task);

  @override
  final TaskModel? task;

  @override
  String toString() {
    return 'HomeState.createTaskSuccess(task: $task)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateTaskSuccessImpl &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateTaskSuccessImplCopyWith<_$CreateTaskSuccessImpl> get copyWith =>
      __$$CreateTaskSuccessImplCopyWithImpl<_$CreateTaskSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int index) selectTaskFilter,
    required TResult Function(bool isFormHidded) changeCreateTaskState,
    required TResult Function() loading,
    required TResult Function(TaskModel? task) createTaskSuccess,
    required TResult Function(String? message) createTaskFailure,
  }) {
    return createTaskSuccess(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int index)? selectTaskFilter,
    TResult? Function(bool isFormHidded)? changeCreateTaskState,
    TResult? Function()? loading,
    TResult? Function(TaskModel? task)? createTaskSuccess,
    TResult? Function(String? message)? createTaskFailure,
  }) {
    return createTaskSuccess?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int index)? selectTaskFilter,
    TResult Function(bool isFormHidded)? changeCreateTaskState,
    TResult Function()? loading,
    TResult Function(TaskModel? task)? createTaskSuccess,
    TResult Function(String? message)? createTaskFailure,
    required TResult orElse(),
  }) {
    if (createTaskSuccess != null) {
      return createTaskSuccess(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SelectTaskFilter value) selectTaskFilter,
    required TResult Function(ChangeCreateTaskState value)
        changeCreateTaskState,
    required TResult Function(CreateTaskLoading value) loading,
    required TResult Function(CreateTaskSuccess value) createTaskSuccess,
    required TResult Function(CreateTaskFailure value) createTaskFailure,
  }) {
    return createTaskSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SelectTaskFilter value)? selectTaskFilter,
    TResult? Function(ChangeCreateTaskState value)? changeCreateTaskState,
    TResult? Function(CreateTaskLoading value)? loading,
    TResult? Function(CreateTaskSuccess value)? createTaskSuccess,
    TResult? Function(CreateTaskFailure value)? createTaskFailure,
  }) {
    return createTaskSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SelectTaskFilter value)? selectTaskFilter,
    TResult Function(ChangeCreateTaskState value)? changeCreateTaskState,
    TResult Function(CreateTaskLoading value)? loading,
    TResult Function(CreateTaskSuccess value)? createTaskSuccess,
    TResult Function(CreateTaskFailure value)? createTaskFailure,
    required TResult orElse(),
  }) {
    if (createTaskSuccess != null) {
      return createTaskSuccess(this);
    }
    return orElse();
  }
}

abstract class CreateTaskSuccess implements HomeState {
  const factory CreateTaskSuccess(final TaskModel? task) =
      _$CreateTaskSuccessImpl;

  TaskModel? get task;
  @JsonKey(ignore: true)
  _$$CreateTaskSuccessImplCopyWith<_$CreateTaskSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateTaskFailureImplCopyWith<$Res> {
  factory _$$CreateTaskFailureImplCopyWith(_$CreateTaskFailureImpl value,
          $Res Function(_$CreateTaskFailureImpl) then) =
      __$$CreateTaskFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$CreateTaskFailureImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$CreateTaskFailureImpl>
    implements _$$CreateTaskFailureImplCopyWith<$Res> {
  __$$CreateTaskFailureImplCopyWithImpl(_$CreateTaskFailureImpl _value,
      $Res Function(_$CreateTaskFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$CreateTaskFailureImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CreateTaskFailureImpl implements CreateTaskFailure {
  const _$CreateTaskFailureImpl(this.message);

  @override
  final String? message;

  @override
  String toString() {
    return 'HomeState.createTaskFailure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateTaskFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateTaskFailureImplCopyWith<_$CreateTaskFailureImpl> get copyWith =>
      __$$CreateTaskFailureImplCopyWithImpl<_$CreateTaskFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int index) selectTaskFilter,
    required TResult Function(bool isFormHidded) changeCreateTaskState,
    required TResult Function() loading,
    required TResult Function(TaskModel? task) createTaskSuccess,
    required TResult Function(String? message) createTaskFailure,
  }) {
    return createTaskFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int index)? selectTaskFilter,
    TResult? Function(bool isFormHidded)? changeCreateTaskState,
    TResult? Function()? loading,
    TResult? Function(TaskModel? task)? createTaskSuccess,
    TResult? Function(String? message)? createTaskFailure,
  }) {
    return createTaskFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int index)? selectTaskFilter,
    TResult Function(bool isFormHidded)? changeCreateTaskState,
    TResult Function()? loading,
    TResult Function(TaskModel? task)? createTaskSuccess,
    TResult Function(String? message)? createTaskFailure,
    required TResult orElse(),
  }) {
    if (createTaskFailure != null) {
      return createTaskFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SelectTaskFilter value) selectTaskFilter,
    required TResult Function(ChangeCreateTaskState value)
        changeCreateTaskState,
    required TResult Function(CreateTaskLoading value) loading,
    required TResult Function(CreateTaskSuccess value) createTaskSuccess,
    required TResult Function(CreateTaskFailure value) createTaskFailure,
  }) {
    return createTaskFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SelectTaskFilter value)? selectTaskFilter,
    TResult? Function(ChangeCreateTaskState value)? changeCreateTaskState,
    TResult? Function(CreateTaskLoading value)? loading,
    TResult? Function(CreateTaskSuccess value)? createTaskSuccess,
    TResult? Function(CreateTaskFailure value)? createTaskFailure,
  }) {
    return createTaskFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SelectTaskFilter value)? selectTaskFilter,
    TResult Function(ChangeCreateTaskState value)? changeCreateTaskState,
    TResult Function(CreateTaskLoading value)? loading,
    TResult Function(CreateTaskSuccess value)? createTaskSuccess,
    TResult Function(CreateTaskFailure value)? createTaskFailure,
    required TResult orElse(),
  }) {
    if (createTaskFailure != null) {
      return createTaskFailure(this);
    }
    return orElse();
  }
}

abstract class CreateTaskFailure implements HomeState {
  const factory CreateTaskFailure(final String? message) =
      _$CreateTaskFailureImpl;

  String? get message;
  @JsonKey(ignore: true)
  _$$CreateTaskFailureImplCopyWith<_$CreateTaskFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
