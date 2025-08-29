import 'package:freezed_annotation/freezed_annotation.dart';

part 'avatar_state.freezed.dart';

@freezed
abstract class AvatarState with _$AvatarState {
  const factory AvatarState.initial() = _Initial;
  const factory AvatarState.loading() = _Loading;
  const factory AvatarState.success({
    required List<String> avatarUrls,
    int? selectedIndex,
  }) = _Success;
  const factory AvatarState.failure(String message) = _Failure;
}
