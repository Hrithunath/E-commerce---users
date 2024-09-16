import 'package:e_commerce_shoes/core/Theme/appcolors.dart';
import 'package:e_commerce_shoes/presentation/bloc/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Profile extends StatelessWidget {
  Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is SignOutSuccess) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Signed out successfully!')),
          );
          Navigator.pushReplacementNamed(context, "/Login");
        } else if (state is SignOutfailed) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Sign out failed! Please try again.')),
          );
        }
      },
      builder: (context, state) {
        return SafeArea(
          child: Column(
            children: [
              Container(
                color: AppColors.primarycolor,
                padding: const EdgeInsets.all(20.0),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 25),
                    SizedBox(height: 30),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          child: Icon(
                            Icons.person,
                            size: 50,
                          ),
                        ),
                        SizedBox(width: 15),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Hrithunath',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                            Text(
                              'Hrithunath&777@gmail.com',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 200, 200, 200),
                                  fontSize: 15),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  children: [
                    ListTile(
                      title: const Text('MyOrders'),
                      leading: const Icon(Icons.receipt_long),
                      trailing: const Icon(Icons.chevron_right),
                      onTap: () {
                        Navigator.pushReplacementNamed(context, "/MyOrders");
                      },
                    ),
                    ListTile(
                      title: const Text('Shipping Addresses'),
                      leading: const Icon(Icons.location_on),
                      trailing: const Icon(Icons.chevron_right),
                      onTap: () {},
                    ),
                    ListTile(
                      title: const Text('Payment Methods'),
                      leading: const Icon(Icons.payment_rounded),
                      trailing: const Icon(Icons.chevron_right),
                      onTap: () {},
                    ),
                    ListTile(
                      title: const Text('Settings'),
                      leading: const Icon(Icons.settings),
                      trailing: const Icon(Icons.chevron_right),
                      onTap: () {},
                    ),
                    ListTile(
                      title: const Text('Logout'),
                      leading: const Icon(Icons.logout),
                      trailing: const Icon(Icons.chevron_right),
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title:  const Center(child: Text('Confirm ',)),
                              content: const Text(
                                  'Are you sure you want to sign out?'),
                              actions: <Widget>[
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context)
                                        .pop(); 
                                  },
                                  child: const Text('Cancel'),
                                ),
                                TextButton(
                                  onPressed: () {
                                    context.read<AuthBloc>().add(LogoutEvent());
                                    Navigator.of(context).pop();
                                  },
                                  child: const Text('Logout'),
                                ),
                              ],
                            );
                          },
                        );
                      },
                    )
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
