import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/usecases/avatar_usecases/get_avatars_usecase.dart';
import 'avatar_event.dart';
import 'avatar_state.dart';

class AvatarBloc extends Bloc<AvatarEvent, AvatarState> {
  final GetAvatarsUseCase _getAvatarsUseCase;

  AvatarBloc(this._getAvatarsUseCase) : super(const AvatarState.initial()) {
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
          state.maybeMap(
            success: (successState) {
              emit(successState.copyWith(selectedIndex: e.index));
            },
            orElse: () {},
          );
        },
      );
    });
  }
}
