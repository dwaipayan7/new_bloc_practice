import 'package:flutter/material.dart';
import 'package:new_bloc_practice/features/cart/bloc/cart_bloc.dart';
import 'package:new_bloc_practice/features/home/bloc/home_bloc.dart';
import 'package:new_bloc_practice/features/home/models/home_product_data_model.dart';
import 'package:new_bloc_practice/main.dart';

class CartTileWidget extends StatelessWidget {
  final ProductDataModel productDataModel;
  final CartBloc cartBloc;
  const CartTileWidget({super.key, required this.productDataModel, required this.cartBloc});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          border: Border.all(color: Colors.black)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            width: double.maxFinite,
            decoration: BoxDecoration(
                image: DecorationImage(

                    image: NetworkImage(productDataModel.imageUrl))
            ),
          ),

          Text(productDataModel.name, style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold
          ),),
          Text(productDataModel.description),

          Row(
            children: [
              Text(
                '\$${productDataModel.price.toString()}', // Add the dollar sign before the price
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        // cartBloc.add(HomeProductWishlistButtonClickedEvent(
                        //     clickedProduct: productDataModel
                        // ));
                      },
                      icon: Icon(
                        Icons.favorite_border,
                        color: Colors.black,
                      )),
                  IconButton(
                      onPressed: () {
                        // cartBloc.add(HomeProductCartButtonClickedEvent(
                        //     clickedProduct: productDataModel
                        // ));
                        cartBloc.add(CartRemoveFromCartEvent(productDataModel: productDataModel));
                      },
                      icon: Icon(
                        Icons.shopping_bag,
                        color: Colors.black,
                      ))
                ],
              )
            ],

          ),


        ],
      ),
    );
  }
}
