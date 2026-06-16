import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';



final StreamCounterProvider = StreamProvider((ref)async*{
      int count = 0;


      while(true){
          // Delayed seconds
          await Future.delayed(Duration(seconds: 3));

          yield count++;
      }
      
});
