import 'package:freezed_annotation/freezed_annotation.dart';

part 'multiplayer_state.freezed.dart';

@freezed
abstract class MultiplayerState with _$MultiplayerState {
  const factory MultiplayerState.initial() = _Initial;
  const factory MultiplayerState.searching() = _Searching;
  const factory MultiplayerState.gameFound() = _GameFound;
  const factory MultiplayerState.gameCancelled() = _GameCancelled;
  const factory MultiplayerState.failure(String message) = _Failure;
}


