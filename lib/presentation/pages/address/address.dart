import 'package:e_commerce_shoes/core/Theme/appcolors.dart';
import 'package:e_commerce_shoes/presentation/Widget/button.dart';
import 'package:e_commerce_shoes/presentation/Widget/text.dart';
import 'package:flutter/material.dart';

class Address extends StatelessWidget {
  const Address({super.key});

  @override
  Widget build(BuildContext context) {
    
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: screenHeight * 0.32,  
                  width: double.infinity,
                  child: Card(
                    elevation: 7,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: const BorderSide(color: AppColors.primarycolor),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextCustom(
                            text: "Hrithunath",
                            fontSize: 19,
                            fontWeight: FontWeight.w800,
                            height: 3,
                          ),
                          TextCustom(
                            text: "Pulikkapatta House malesamangalam(po) Thiruviwamala Thrissur pin code :680588,",
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey,
                          ),
                          const SizedBox(height: 15),
                          TextCustom(
                            text: "Ph:8075908271",
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey,
                          ),
                          const SizedBox(height: 20),
                          Row(
                            children: [
                              SizedBox(
                                height: 60,
                                width: screenWidth * 0.2,  
                                child: ButtonCustomized(
                                  text: "Edit",
                                  textStyle: const TextStyle(
                                    color: Colors.grey,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w800,
                                    height: 10,
                                  ),
                                  color: AppColors.primarycolor,
                                  onPressed: () {},
                                ),
                              ),
                              const SizedBox(width: 25),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.delete_outline_sharp,
                                    size: 35, color: Colors.grey),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: screenHeight * 0.5), 
                SizedBox(
                  height: 55,
                  width: double.infinity,
                  child: ButtonCustomized(
                    text: "Add Address",
                    textStyle: const TextStyle(
                      color: Colors.grey,
                      fontSize: 25,
                      fontWeight: FontWeight.w800,
                      height: 10,
                    ),
                    color: AppColors.primarycolor,
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
