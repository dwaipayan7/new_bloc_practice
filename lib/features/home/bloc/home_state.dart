part of 'home_bloc.dart';

@immutable
sealed class HomeState {}

abstract class HomeActionState extends HomeState{}

final class HomeInitial extends HomeState {}

class HomeLoadingState extends HomeState{}

class HomeLoadedSuccessState extends HomeState{
  final List<ProductDataModel> product;

  HomeLoadedSuccessState({required this.product});
}

class HomeErrorState extends HomeState{}

class HomeNavigateToWishlistPageActionState extends HomeActionState{}

class HomeNavigateToCartPageActionState extends HomeActionState{}


class HomeProductItemWishListedActionState extends HomeActionState{}

class HomeProductItemCartedActionState extends HomeActionState{}



