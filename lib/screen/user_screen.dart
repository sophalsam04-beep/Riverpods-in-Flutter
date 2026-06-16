import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpods_demo1/model/user_model.dart';
import 'package:riverpods_demo1/provider/future_provider.dart';

class UserScreen extends ConsumerWidget {
  UserScreen({super.key});

  final List<UserModel> model = [
    UserModel(id: 101, name: "Un virak", email: "virak_uhs123@gmail.com"),
    UserModel(id: 102, name: "Van Leakha", email: "virak_uhs123@gmail.com"),
    UserModel(id: 103, name: "Sok chanto", email: "virak_uhs123@gmail.com"),
    UserModel(id: 104, name: "Rin vibols", email: "virak_uhs123@gmail.com"),
    UserModel(id: 105, name: "Mean piron", email: "virak_uhs123@gmail.com"),
    UserModel(id: 106, name: "Kong bonaa", email: "virak_uhs123@gmail.com"),
    UserModel(id: 107, name: "Seak lim heng", email: "virak_uhs123@gmail.com"),
    UserModel(id: 108, name: "Neang davy", email: "virak_uhs123@gmail.com"),
    UserModel(id: 109, name: "Meas morokot", email: "virak_uhs123@gmail.com"),
    UserModel(id: 110, name: "San Phanna", email: "virak_uhs123@gmail.com"),
    UserModel(id: 111, name: "Sea Srey den", email: "virak_uhs123@gmail.com"),
    UserModel(id: 112, name: "Dy soksan", email: "virak_uhs123@gmail.com"),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userAsync = ref.watch(UserProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text("API Service User", style: TextStyle(fontSize: 30)),
      ),

      body: ListView.builder(
        itemCount: model.length,
        itemBuilder: (context, index) {
          final user = model[index];

          return ListTile(
            leading: CircleAvatar(child: Text("${user.id}")),

            title: Text("${user.name}"),
            subtitle: Text("${user.email}"),
          );
        },
      ),
    );
  }
}
