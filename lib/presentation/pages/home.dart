import 'package:e_commerce_shoes/presentation/Widget/text.dart';
import 'package:e_commerce_shoes/presentation/Widget/textFormFeild.dart';
import 'package:e_commerce_shoes/presentation/bloc/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeWrapper extends StatelessWidget {
  const HomeWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthBloc(),
      child: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Textformfeildcustom(
                        label: "Search Product",
                        prefixIcon: Icons.search,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                SizedBox(
                  height: 350,
                  child: CarouselView(
                    itemExtent: 380,
                    children: List.generate(10, (int index) {
                      
                      return Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: const DecorationImage(
                            image: NetworkImage(
                              "https://img.freepik.com/free-vector/sale-banner-with-product-description_1361-1333.jpg?w=1380&t=st=1725946972~exp=1725947572~hmac=eddb2aa0c02c8159b3c65b763b416224bf249c7d7f6e279a77488f75cc0050d4",
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    }),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: TextCustom(text: "Top Categories")),
                ),
                const SizedBox(
                  height: 20,
                ),

                
                const Padding(
                  padding: EdgeInsets.all(8),
                 child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextCustom(
                        text: "Popular Shoes",
                        fontSize: 17,
                        fontWeight: FontWeight.w900,
                      ),
                      TextCustom(
                        text: "See More",
                        fontSize: 17,
                        fontWeight: FontWeight.w900,
                      ),
                    ],
                  ),
                ),
                CarouselView(
                   itemExtent: 350,
                   
                  children: List.generate(5, (int index) {
                    return Flexible(
                      child: Card(
                        
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 250,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                    "https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/78b1c276-1a6e-4048-a5c8-6f8d1747e837/PEGASUS+PLUS.png",
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(11.0),
                              child: TextCustom(
                                text: "Nike Pegasus Plus",
                                fontSize: 18,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: TextCustom(
                                text: "Men's Road Running Shoes",
                                fontSize: 16,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: TextCustom(
                                text: "₹2999.00",
                                fontSize: 16,
                                color: Colors.green,
                              ),
                            ),
                          ],
                        ),
                      ),
                                        ),
                    );
                  }
                  )
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
