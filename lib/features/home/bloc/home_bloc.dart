import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:new_bloc_practice/features/home/ui/home.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
  on<HomeProductWishlistButtonClickedEvent>(homeProductWishlistButtonClickedEvent);
  on<HomeProductCartButtonClickedEvent>(homeProductCartButtonClickedEvent);
  on<HomeWishlistButtonNavigateEvent>(homeWishlistButtonNavigateEvent);
  on<HomeCartButtonNavigateEvent>(homeCartButtonNavigateEvent);


  }

  FutureOr<void> homeProductWishlistButtonClickedEvent(HomeProductWishlistButtonClickedEvent event, Emitter<HomeState> emit) {

    print('WishList Product clicked');

  }

  FutureOr<void> homeProductCartButtonClickedEvent(HomeProductCartButtonClickedEvent event, Emitter<HomeState> emit) {
    print('Cart Product clicked');
  }

  FutureOr<void> homeWishlistButtonNavigateEvent(HomeWishlistButtonNavigateEvent event, Emitter<HomeState> emit) {

    print("Wishlist Navigate Clicked");
    emit(HomeNavigateToWishlistPageActionState());

  }

  FutureOr<void> homeCartButtonNavigateEvent(HomeCartButtonNavigateEvent event, Emitter<HomeState> emit) {

    print("Cart Button Navigate");
    emit(HomeNavigateToCartPageActionState());

  }
}
