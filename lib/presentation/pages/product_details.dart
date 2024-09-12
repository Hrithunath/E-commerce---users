import 'package:e_commerce_shoes/presentation/Widget/button.dart';
import 'package:e_commerce_shoes/presentation/Widget/text.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});
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
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      "https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/78b1c276-1a6e-4048-a5c8-6f8d1747e837/PEGASUS+PLUS.png",
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
                  text: "Nike Pegasus Plus\n₹2999.00",
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
                          image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                              "https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/78b1c276-1a6e-4048-a5c8-6f8d1747e837/PEGASUS+PLUS.png",
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  itemCount: 10,
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
                            text: "7",
                            fontSize: 17,
                            fontWeight: FontWeight.w700,
                          ),
                        ));
                  },
                  itemCount: 10,
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
                padding: const EdgeInsets.only(top: 10,left: 17,right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextCustom(
                      text: "Shown:",
                      fontSize: 17,
                    ),
                     TextCustom(
                      text: "Laser Blue/Anthracite\n/Watermelon/White",
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4,horizontal: 17),
                child: Row(
                 
                  children: [
                    const SizedBox(height: 17,),
                    TextCustom(text: "Style",
                    fontSize: 17,),
                    
                  ],
                ),
              ),
               Padding(
                 padding: const EdgeInsets.all(17),
                 child: TextCustom(text: "The Nike Air Max 270 React ENG combines a full-length React foam midsole with a 270 Max Air unit for unrivaled comfort and a striking visual experience.",
                 color: Colors.grey,
                 height: 1.5,
                
                 fontSize: 16,),
               ),
               const SizedBox(height: 10,),
               Center(child: ButtonCustomized(text: "Add To Cart",  color: const Color.fromARGB(255, 207, 57, 233),
               height: 50,
               width: 300,
               borderRadius: 10,
                onPressed: (){})),
                const SizedBox(height: 15,),
                
            ],
          ),
        ),
      ),
    );
  }
}
