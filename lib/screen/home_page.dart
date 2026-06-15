import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/misc.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Simple provider --> read only data
    final counterProvider = Provider<String>((ref) {
      return "Flutter Riverpods";
    });


        // state Provider
    final count = ref.watch(counterProvider);

    final counterApp = Provider<int>((ref){
        return 0;
    });
        // Read data
    final c = ref.watch(counterApp);


        // Update data
        final appCounter = Provider<int>((ref){
            return 0;
        });
    return Scaffold(
      appBar: AppBar(title: Text("Riverpods", style: TextStyle(fontSize: 30))),

      body: Center(child: Text(count, style: TextStyle(fontSize: 30))),
    );
  }
}
