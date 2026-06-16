import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod/legacy.dart';

// 1. Create Provider
final AppProvider = Provider<String>((ref) {
  return "Sam sophal";
});

final CounterProvider = Provider<int>((ref) {
  return 5;
});

final doubleVariable = Provider<double>((ref) {
  return 55.3;
});

final listItem = Provider<List<Map<String, dynamic>>>((ref) {
  return [];
});

void main(List<String> args) {
  runApp(
    // Wrap Apps with ProviderScope
    ProviderScope(child: App()),
  );
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Homepage(),
    );
  }
}

class Homepage extends ConsumerWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Used Providers
    final provider = ref.watch(AppProvider);
    final c = ref.watch(CounterProvider);
    final items = ref.watch(listItem);

    var center = Center(child: Text("${provider.toString()}"));
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Riverpods",
          style: TextStyle(fontSize: 30, color: Colors.black),
        ),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("${provider.toString()}"),
            Text("${c.toString()}"),
            Text("${items.toString()}"),
          ],
        ),
      ),
    );
  }
}
