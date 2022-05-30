import 'package:aplikasi_eccomerce/models/product_model.dart';
import 'package:aplikasi_eccomerce/providers/wishlist_provider.dart';
import 'package:aplikasi_eccomerce/widgets/product_page.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_eccomerce/theme.dart';
import 'package:provider/provider.dart';

class WhishlistCard extends StatelessWidget {
  final ProductModel product;
  WhishlistCard(this.product);
  @override
  Widget build(BuildContext context) {
    WishlistProvider wishlistProvider = Provider.of<WishlistProvider>(context);
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductPage(product),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.only(
          top: 20,
        ),
        padding: EdgeInsets.only(
          top: 10,
          left: 12,
          bottom: 14,
          right: 20,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12), color: bgColor4),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                product.galleries[0].url,
                width: 60,
              ),
            ),
            SizedBox(
              width: 12,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.name,
                    style: primaryTextStyle.copyWith(
                      fontWeight: semiBold,
                    ),
                  ),
                  Text(
                    '\$${product.price}',
                    style: priceTextStyle,
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                wishlistProvider.setProduct(product);
              },
              child: Image.asset(
                'assets/button_wishlist_blue.png',
                width: 34,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
