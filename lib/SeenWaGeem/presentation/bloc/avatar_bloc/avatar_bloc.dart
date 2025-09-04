import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/usecases/avatar_usecases/get_avatars_usecase.dart';
import '../../../domain/usecases/avatar_usecases/update_avatar_usecase.dart';
import 'avatar_event.dart';
import 'avatar_state.dart';

@injectable
class AvatarBloc extends Bloc<AvatarEvent, AvatarState> {
  final GetAvatarsUseCase _getAvatarsUseCase;
  final UpdateAvatarUseCase _updateAvatarUseCase;

  AvatarBloc(this._getAvatarsUseCase, this._updateAvatarUseCase)
      : super(const AvatarState.initial()) {
    on<AvatarEvent>((event, emit) async {
      await event.map(
        fetchAvatars: (e) async {
          emit(const AvatarState.loading());
          try {
            final urls = await _getAvatarsUseCase.call();
            emit(AvatarState.success(avatarUrls: urls));
          } catch (e) {
            emit(AvatarState.failure(e.toString()));
          }
        },
        avatarSelected: (e) {
          state.maybeWhen(
            success: (urls, selectedIndex, avatarUpdated) {
              emit(AvatarState.success(
                avatarUrls: urls,
                selectedIndex: e.index,
                avatarUpdated: avatarUpdated,
              ));
            },
            orElse: () {},
          );
        },
        updateAvatar: (e) async {
          emit(const AvatarState.updating());
          try {
            await _updateAvatarUseCase.call(e.avatarUrl);
            final currentState = state;
            currentState.maybeWhen(
              success: (urls, selectedIndex, avatarUpdated) {
                emit(AvatarState.success(
                  avatarUrls: urls,
                  selectedIndex: selectedIndex,
                  avatarUpdated: true,
                ));
              },
              orElse: () {},
            );
          } catch (e) {
            emit(AvatarState.failure(e.toString()));
          }
        },
      );
    });
  }
}
