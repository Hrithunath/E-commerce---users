import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce_shoes/core/Theme/appcolors.dart';
import 'package:e_commerce_shoes/data/repository/address_service.dart';
import 'package:e_commerce_shoes/domain/model/address.model.dart';
import 'package:e_commerce_shoes/presentation/Widget/button.dart';
import 'package:e_commerce_shoes/presentation/Widget/scaffold_messenger.dart';
import 'package:e_commerce_shoes/presentation/Widget/text.dart';
import 'package:e_commerce_shoes/presentation/pages/address/edit_address.dart';
import 'package:flutter/material.dart';


              class ShippedAddress extends StatelessWidget {
  final String userId;
  const ShippedAddress({super.key, required this.userId});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    final shippingAddressService = ShippingAddressImplement();

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => EditAddress()));
            },
            icon: Icon(Icons.add, color: Colors.black),
          )
        ],
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: shippingAddressService.fetchAddress(userId),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          if (snapshot.hasError) {
            return Center(
              child: Text("Error fetching address"),
            );
          }
          if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
            return Center(
              child: Text(
                "No addresses found",
                style: TextStyle(color: Colors.red, fontSize: 24),
              ),
            );
          }

          var addressDocs = snapshot.data!.docs;
          return SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    ListView.builder(
                      itemCount: addressDocs.length,
                      shrinkWrap: true, // Important for ListView inside SingleChildScrollView
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        var addressdoc = addressDocs[index];
                        var address = AddressModel.fromFirestore(addressdoc);
                        return SizedBox(
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
                                    text: address.name,
                                    
                                    fontSize: 19,
                                    fontWeight: FontWeight.w800,
                                    height: 3,
                                  ),
                                  TextCustom(
                                    text: address.address,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey,
                                  ),
                                  TextCustom(
                                    text: "${address.pincode}, ${address.state}",
                                    fontSize: 17,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey,
                                  ),
                                  const SizedBox(height: 15),
                                  TextCustom(
                                    text: "Ph: ${address.phone}",
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
                                          onPressed: () {
                                            
                                             Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => EditAddress()));
                                          },
                                        ),
                                      ),
                                      const SizedBox(width: 25),
                                      IconButton(
                                        onPressed: () {
                                           shippingAddressService.deleteAddress(address);
                                          showSnackBarMessage(context, "Address Deleted", Colors.green);
                                        },
                                        icon: const Icon(Icons.delete_outline_sharp,
                                            size: 35, color: Colors.grey),
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
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => EditAddress()));
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
