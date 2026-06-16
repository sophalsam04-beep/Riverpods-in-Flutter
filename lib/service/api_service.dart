import 'dart:async';
import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:riverpods_demo1/model/user_model.dart';
import 'package:http/http.dart' as http;



class ApiService {
      // 1. Create Future List Model
      Future<List<UserModel>> fetchUser()async{
            // 2. initial API links
            final respone = await http.get(
              Uri.parse('https://jsonplaceholder.typicode.com/users')
            );

            // 3. check status code
            if(respone.statusCode == 200){

                  // 4. Decoded 
                 final List data = jsonDecode(respone.body);

              return data.map((e)=> UserModel.fromJson(e)).toList();
                
            } 

          throw Exception("Load the Error...!");

            
      }

  
}