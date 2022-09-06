import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';
import 'package:shamo/widgets/checkout_card.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  Widget header() {
    return AppBar(
      backgroundColor: backgroundColor1,
      elevation: 0,
      centerTitle: true,
      title: const Text(
        'Checkout Details',
      ),
    );
  }

  Widget content() {
    return ListView(
      padding: EdgeInsets.symmetric(
        horizontal: defaultMargin,
      ),
      children: [
        // NOTE : List Items
        Container(
          margin: EdgeInsets.only(
            top: defaultMargin,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'List Items',
                style: primaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                ),
              ),
              CheckoutCard(),
              CheckoutCard()
            ],
          ),
        ),

        // NOTE : Address Details
        Container(
          margin: EdgeInsets.only(
            top: defaultMargin,
          ),
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: backgroundColor4,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Address Details',
                style: primaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Column(
                        children: [
                          Image.asset(
                            'assets/icon_store_location.png',
                            width: 40,
                          ),
                          Image.asset(
                            'assets/icon_line.png',
                            height: 30,
                          ),
                          Image.asset(
                            'assets/icon_your_address.png',
                            width: 40,
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Store Location',
                        style: secondaryTextStyle.copyWith(
                          fontSize: 12,
                          fontWeight: light,
                        ),
                      ),
                      Text(
                        'Adidas Core',
                        style: primaryTextStyle.copyWith(
                          fontWeight: medium,
                        ),
                      ),
                      SizedBox(
                        height: defaultMargin,
                      ),
                      Text(
                        'Your Address',
                        style: secondaryTextStyle.copyWith(
                          fontSize: 12,
                          fontWeight: light,
                        ),
                      ),
                      Text(
                        'Marsemoon',
                        style: primaryTextStyle.copyWith(
                          fontWeight: medium,
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),

        // NOTE : Payment Summary
        Container(
          margin: EdgeInsets.only(
            top: defaultMargin,
          ),
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: backgroundColor4,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Payment Summary',
                style: primaryTextStyle.copyWith(
                  fontWeight: medium,
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Product Quantity',
                    style: secondaryTextStyle.copyWith(
                      fontWeight: light,
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    '2 Items',
                    style: primaryTextStyle.copyWith(
                      fontWeight: medium,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Product Price',
                    style: secondaryTextStyle.copyWith(
                      fontWeight: light,
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    '\$575.96',
                    style: primaryTextStyle.copyWith(
                      fontWeight: medium,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Shipping',
                    style: secondaryTextStyle.copyWith(
                      fontWeight: light,
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    'Free',
                    style: primaryTextStyle.copyWith(
                      fontWeight: medium,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              const Divider(
                thickness: 1,
                color: Color(0xff2e3141),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total',
                    style: priceTextStyle.copyWith(
                      fontWeight: semiBold,
                    ),
                  ),
                  Text(
                    '\$575.96',
                    style: priceTextStyle.copyWith(
                      fontWeight: semiBold,
                    ),
                  )
                ],
              ),
            ],
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: header(),
        preferredSize: const Size.fromHeight(60),
      ),
      backgroundColor: backgroundColor3,
      body: content(),
    );
  }
}
