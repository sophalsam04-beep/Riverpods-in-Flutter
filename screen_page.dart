import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpods_demo1/model/user.dart';
import 'package:riverpods_demo1/provider/stream_provider.dart';

class ScreenPage extends ConsumerWidget {
  ScreenPage({super.key});

  final List<User> user = [
    User(id: 101, name: "Un virak", email: "jkvfsbjrtsbrtrr"),
    User(id: 101, name: "Un virak", email: "jkvfsbjrtsbrtrr"),
    User(id: 101, name: "Un virak", email: "jkvfsbjrtsbrtrr"),
    User(id: 101, name: "Un virak", email: "jkvfsbjrtsbrtrr"),
    User(id: 101, name: "Un virak", email: "jkvfsbjrtsbrtrr"),
    User(id: 101, name: "Un virak", email: "jkvfsbjrtsbrtrr"),
    User(id: 101, name: "Un virak", email: "jkvfsbjrtsbrtrr"),
    User(id: 101, name: "Un virak", email: "jkvfsbjrtsbrtrr"),
    User(id: 101, name: "Un virak", email: "jkvfsbjrtsbrtrr"),
    User(id: 101, name: "Un virak", email: "jkvfsbjrtsbrtrr"),
    User(id: 101, name: "Un virak", email: "jkvfsbjrtsbrtrr"),
    User(id: 101, name: "Un virak", email: "jkvfsbjrtsbrtrr"),
    User(id: 101, name: "Un virak", email: "jkvfsbjrtsbrtrr"),
    User(id: 101, name: "Un virak", email: "jkvfsbjrtsbrtrr"),
    User(id: 101, name: "Un virak", email: "jkvfsbjrtsbrtrr"),
    User(id: 101, name: "Un virak", email: "jkvfsbjrtsbrtrr"),
    User(id: 101, name: "Un virak", email: "jkvfsbjrtsbrtrr"),
    User(id: 101, name: "Un virak", email: "jkvfsbjrtsbrtrr"),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stream = ref.watch(StreamUserProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "API With StreamProvider",
          style: TextStyle(fontSize: 25, color: Colors.black),
        ),
      ),

      body: stream.when(
        data: (user) {
          return ListView.builder(
            itemCount: user.length,
            itemBuilder: (context, index) {
              final u = user[index];

              return ListTile(
                leading: CircleAvatar(child: Text("${u.id}")),
                title: Text("${u.name}"),
                subtitle: Text("${u.email}"),
              );
            },
          );
        },

        error: (error, stackTrace) => Center(child: Text(error.toString())),

        loading: () => CircularProgressIndicator(),
      ),
    );
  }
}
