import 'package:freezed_annotation/freezed_annotation.dart';

part 'multiplayer_event.freezed.dart';

@freezed
abstract class MultiplayerEvent with _$MultiplayerEvent {
  const factory MultiplayerEvent.startSearch() = _StartSearch;
  const factory MultiplayerEvent.stopSearch() = _StopSearch;
  const factory MultiplayerEvent.gameFound() = _GameFound;
  const factory MultiplayerEvent.gameCancelled() = _GameCancelled;
}


