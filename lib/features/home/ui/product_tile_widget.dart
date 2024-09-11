import 'package:flutter/material.dart';
import 'package:new_bloc_practice/features/home/models/home_product_data_model.dart';
import 'package:new_bloc_practice/main.dart';

class ProductTileWidget extends StatelessWidget {
  final ProductDataModel productDataModel;
  const ProductTileWidget({super.key, required this.productDataModel});

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
                        // homeBloc.add(HomeWishlistButtonNavigateEvent());
                      },
                      icon: Icon(
                        Icons.favorite_border,
                        color: Colors.black,
                      )),
                  IconButton(
                      onPressed: () {
                        // homeBloc.add(HomeCartButtonNavigateEvent());
                      },
                      icon: Icon(
                        Icons.shopping_cart_outlined,
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
