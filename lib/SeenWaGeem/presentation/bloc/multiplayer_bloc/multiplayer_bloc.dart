import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'multiplayer_event.dart';
import 'multiplayer_state.dart';

@injectable
class MultiplayerBloc extends Bloc<MultiplayerEvent, MultiplayerState> {
  MultiplayerBloc() : super(const MultiplayerState.initial()) {
    on<MultiplayerEvent>((event, emit) async {
      await event.map(
        startSearch: (e) => _handleStartSearch(emit),
        stopSearch: (e) => _handleStopSearch(emit),
        gameFound: (e) => _handleGameFound(emit),
        gameCancelled: (e) => _handleGameCancelled(emit),
      );
    });
  }

  Future<void> _handleStartSearch(Emitter<MultiplayerState> emit) async {
    emit(const MultiplayerState.searching());
    // TODO: Implement actual multiplayer search logic
    // For now, just keep searching until stopped
    // No automatic game found simulation
  }

  Future<void> _handleStopSearch(Emitter<MultiplayerState> emit) async {
    emit(const MultiplayerState.initial());
  }

  Future<void> _handleGameFound(Emitter<MultiplayerState> emit) async {
    emit(const MultiplayerState.gameFound());
  }

  Future<void> _handleGameCancelled(Emitter<MultiplayerState> emit) async {
    emit(const MultiplayerState.gameCancelled());
  }
}
