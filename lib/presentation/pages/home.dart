import 'package:e_commerce_shoes/core/Theme/appcolors.dart';
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
    return 
      SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
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
                const SizedBox(height: 25),
                // First Carousel (Promotional Banners)
                SizedBox(
                  height: 350,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8),
                        child: Container(
                          width: 380,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://img.freepik.com/free-vector/sale-banner-with-product-description_1361-1333.jpg?w=1380&t=st=1725946972~exp=1725947572~hmac=eddb2aa0c02c8159b3c65b763b416224bf249c7d7f6e279a77488f75cc0050d4",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 10),
                // Top Categories Section
                 Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: TextCustom(
                      text: "Top Categories",
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(
                  height: 100,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 15,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5.0),
                        child: Card(
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: SizedBox(
                            width: 100,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                      image: DecorationImage(
                                        image: NetworkImage(
                                          "https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/78b1c276-1a6e-4048-a5c8-6f8d1747e837/PEGASUS+PLUS.png",
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                               Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: TextCustom(
                                    text: "Running Shoes",
                                    fontSize: 9,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 20),
                // Second Carousel (popular Shoes)
               Padding(
                  padding: const EdgeInsets.all(8),
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
                SizedBox(
                  height: 350,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal, 
                    itemCount: 15,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: SizedBox(
                          width: 350,
                          child: Card(
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  15),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Container(
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
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 8, left: 8, bottom: 0),
                                  child: TextCustom(
                                    text: "Nike Pegasus Plus",
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                 Padding(
                                  padding: const EdgeInsets.only(
                                      top: 8, left: 8, bottom: 3),
                                  child: TextCustom(
                                    text: "Men's Road Running Shoes",
                                    fontSize: 16,
                                  ),
                                ),
                                 Padding(
                                  padding: const EdgeInsets.only(
                                      top: 2, left: 8, bottom: 13),
                                  child: TextCustom(
                                    text: "₹2999.00",
                                    fontSize: 19,
                                     color: AppColors.Kgreen,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                 // third Carousel (New Arrivals)
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextCustom(
                        text: "New Arrivals",
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
                SizedBox(
                  height: 350,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal, 
                    itemCount: 15, 
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: SizedBox(
                          width: 350,
                          child: Card(
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  15), 
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Container(
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
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 8, left: 8, bottom: 0),
                                  child: TextCustom(
                                    text: "Nike Pegasus Plus",
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 8, left: 8, bottom: 3),
                                  child: TextCustom(
                                    text: "Men's Road Running Shoes",
                                    fontSize: 16,
                                  ),
                                ),
                                 Padding(
                                  padding: const EdgeInsets.only(
                                      top: 2, left: 8, bottom: 13),
                                  child: TextCustom(
                                    text: "₹2999.00",
                                    fontSize: 19,
                                    color: AppColors.Kgreen,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        
      );
    
  }
}
