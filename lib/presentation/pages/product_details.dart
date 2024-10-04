import 'package:e_commerce_shoes/core/Theme/appcolors.dart';
import 'package:e_commerce_shoes/presentation/Widget/button.dart';
import 'package:e_commerce_shoes/presentation/Widget/text.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  final productDetails;
  ProductDetails({super.key, required this.productDetails});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      productDetails["uploadImages"][0].toString(),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(17),
                child: TextCustom(
                  text:
                      "${productDetails["productName"]}\n₹${productDetails["price"].toString()}",
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 130,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        height: 130,
                        width: 130,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image:  DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                              productDetails["uploadImages"][index].toString(),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  itemCount:productDetails["uploadImages"].length,
                ),
              ),
              const SizedBox(
                height: 13,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 17),
                child: TextCustom(
                  text: "Select Size",
                  fontSize: 17,
                  fontWeight: FontWeight.w900,
                ),
              ),
              SizedBox(
                height: 70,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                        padding: const EdgeInsets.all(10),
                        child: CircleAvatar(
                          backgroundColor: Colors.grey[200],
                          radius: 27,
                          child: TextCustom(
                            text: productDetails["sizes"][index],
                            fontSize: 17,
                            fontWeight: FontWeight.w700,
                          ),
                        ));
                  },
                  itemCount: productDetails["sizes"].length,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 17),
                child: TextCustom(
                  text: "Specification",
                  fontSize: 17,
                  fontWeight: FontWeight.w900,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 17, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextCustom(
                      text: "Shown:",
                      fontSize: 17,
                    ),
                    TextCustom(
                        text: "${productDetails["category"]}",
                        fontSize: 16,
                        color: AppColors.kgrey),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 4, horizontal: 17),
                child: Row(
                  children: [
                    const SizedBox(
                      height: 17,
                    ),
                    TextCustom(
                      text: "Style",
                      fontSize: 17,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(17),
                child: TextCustom(
                  text:
                     "${productDetails["productDescription"]}",
                  color: AppColors.kgrey,
                  height: 1.5,
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                  child: ButtonCustomized(
                      text: "Add To Cart",
                      color: AppColors.primarycolor,
                      height: 50,
                      width: 300,
                      borderRadius: 10,
                      onPressed: () {})),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
