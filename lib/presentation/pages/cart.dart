import 'package:e_commerce_shoes/core/Theme/appcolors.dart';
import 'package:e_commerce_shoes/presentation/Widget/button.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_shoes/presentation/Widget/text.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Container(
            color: Theme.of(context).appBarTheme.backgroundColor, 
            padding: const EdgeInsets.all(16.0),
            child: TextCustom(
              text: "My Cart",
              fontSize: 23,
              fontWeight: FontWeight.bold,
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Card(
                  child: SizedBox(
                    height: 100,
                    child: ListTile(
                      leading: Container(
                        height: 100,
                        width: 50,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                              "https://images.unsplash.com/photo-1542291026-7eec264c27ff?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8c2hvZXN8ZW58MHx8MHx8fDA%3D",
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      title: Row(
                        children: [
                          SizedBox(
                            width: 200,
                            child: TextCustom(
                              text: "Nike Air Zoom Pegasus 36 Miami",
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(width: 17),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.delete),
                          ),
                        ],
                      ),
                      subtitle: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextCustom(
                            text: "₹299,43",
                            fontSize: 19,
                            color: AppColors.Kgreen,
                          ),
                          Row(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.add),
                              ),
                              TextCustom(text: "3"),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.remove),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
      
           Container(
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.spaceBetween,
              children: [
               const Divider(),
                ListTile(
                  title: TextCustom(text: "item (3)"),
                  trailing: TextCustom(text: "₹598.86"),
      
                ),
                 ListTile(
                  title: TextCustom(text: "Shipping"),
                  trailing: TextCustom(text: "₹40.00"),
      
                ),
                 ListTile(
                  title: TextCustom(text: "Import charges"),
                  trailing: TextCustom(text: "₹128.00"),
      
                ),
                 ListTile(
                  title: TextCustom(text: "Total Price",
                  fontSize: 17,
                  fontWeight: FontWeight.bold,),
                  trailing: TextCustom(text: "₹766.86"),
      
                ),
                ButtonCustomized(text: "Check Out", 
                  color: AppColors.Primarycolor,
               height: 50,
               width: 300,
               borderRadius: 10,
                onPressed: (){}),
                const SizedBox(height: 20,),
              ],
            ),
           )
          
        ],
      ),
    );
  }
}
