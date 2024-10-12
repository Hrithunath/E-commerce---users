import 'package:e_commerce_shoes/core/Theme/appcolors.dart';
import 'package:e_commerce_shoes/core/utils/validator.dart';
import 'package:e_commerce_shoes/data/repository/address_service.dart';
import 'package:e_commerce_shoes/domain/model/address.model.dart';
import 'package:e_commerce_shoes/presentation/Widget/button.dart';
import 'package:e_commerce_shoes/presentation/Widget/scaffold_messenger.dart';
import 'package:e_commerce_shoes/presentation/Widget/text.dart';
import 'package:e_commerce_shoes/presentation/Widget/textFormFeild.dart';
import 'package:flutter/material.dart';

class AddAddress extends StatelessWidget {
   AddAddress({super.key});
   final formkey = GlobalKey<FormState>();
   final nameController = TextEditingController();
    final addressController = TextEditingController();
     final pinController = TextEditingController();
      final stateController = TextEditingController();
       final phoneController = TextEditingController();
     
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(192, 42, 219, 1),
        
           title:  Center(
             child: TextCustom(
              text: "Add  delivery address"),
           )
        ),
      body: SafeArea(child: 
      Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
         key: formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
            
            Textformfeildcustom(label: "Name",prefixIcon: Icons.person_sharp,
             validator: (value) =>
                                Validator.validateText(value)),
            const SizedBox(height: 10,),
            Textformfeildcustom(label: "Address",prefixIcon: Icons.place,
             validator: (value) =>
                                Validator.validateText(value)),
            const SizedBox(height: 10,),
            Textformfeildcustom(label: "Pin",prefixIcon: Icons.pin,
            validator: (value) => Validator.validatePinCode(value),),
            const SizedBox(height: 10,),
            Textformfeildcustom(label: "State",prefixIcon: Icons.business,
             validator: (value) =>
                                Validator.validateText(value)),
            const SizedBox(height: 10,),
             Textformfeildcustom(label: "Phone",prefixIcon: Icons.phone,
             validator: (value) => 
             Validator.validatePhoneNumber(value)),
               const SizedBox(height: 16,),
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
                    onPressed: ()async {
                      if (formkey.currentState!.validate()) {
                        ShippingAddressImplement shippingAddressImplement = ShippingAddressImplement();
                        try {
                          await shippingAddressImplement.saveAddress(
                            AddressModel(
                              id: DateTime.now().millisecondsSinceEpoch.toString(),
                              name: nameController.text, 
                              
                              address: addressController.text, 
                              pincode: pinController.text, 
                              state: stateController.text, 
                              phone: phoneController.text),
                          );
                             nameController.clear();
                             addressController.clear();
                             pinController.clear();
                             stateController.clear();
                             phoneController.clear();
                        } catch (e) {
                          
                          showSnackBarMessage(context, 
                          "Address added succesfully",
                           Colors.green);
                        }
                      }
                    },
                  ),
                ),
          
          ],),
        ),
        
      )
      
      ),
    );
  }
}