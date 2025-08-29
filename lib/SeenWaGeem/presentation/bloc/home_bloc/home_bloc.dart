import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/usecases/get_top_categories_usecase.dart';
import 'home_event.dart';
import 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetTopCategoriesUseCase _getTopCategoriesUseCase;

  HomeBloc(this._getTopCategoriesUseCase) : super(const HomeState.initial()) {
    on<HomeEvent>((event, emit) async {
      await event.map(
        fetchData: (e) async {
          emit(const HomeState.loading());
          try {
            final topCategories = await _getTopCategoriesUseCase.call();
            emit(HomeState.success(topCategories: topCategories));
          } catch (e) {
            emit(HomeState.failure(e.toString()));
          }
        },
      );
    });
  }
}
