import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpods_demo1/API/api_service.dart';
import 'package:riverpods_demo1/model/user.dart';


final StreamUserProvider = StreamProvider<List<User>>((ref)async*{
       
        while( true ){
            final users = await ApiService().fetchUser();

            yield users;

            await Future.delayed(Duration(seconds: 2));


        }
});
