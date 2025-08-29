import 'package:freezed_annotation/freezed_annotation.dart';

part 'avatar_event.freezed.dart';

@freezed
abstract class AvatarEvent with _$AvatarEvent {
  const factory AvatarEvent.fetchAvatars() = _FetchAvatars;
  const factory AvatarEvent.avatarSelected(int index) = _AvatarSelected;
}
