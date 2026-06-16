import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpods_demo1/provider/stream_provider.dart';

class CounterScreen extends ConsumerWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter = ref.watch(StreamCounterProvider);
    return Scaffold(
      appBar: AppBar(title: Text("StreamProvider Demo")),
      body: counter.when(
        data: (v) {
          return Center(child: Text("${v}", style: TextStyle(fontSize: 30)));
        },

        error: (error, stackTrace) {
          return Center(child: Text(error.toString()));
        },

        loading: () => Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
