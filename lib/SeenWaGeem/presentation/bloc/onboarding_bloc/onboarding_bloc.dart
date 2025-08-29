import 'package:flutter_bloc/flutter_bloc.dart';

import 'onboarding_event.dart';
import 'onboarding_state.dart';

class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState> {
  OnboardingBloc() : super(const OnboardingState()) {
    on<OnboardingEvent>((event, emit) {
      event.when(
        pageChanged: (int pageIndex) {
          emit(state.copyWith(pageIndex: pageIndex));
        },
      );
    });
  }
}
