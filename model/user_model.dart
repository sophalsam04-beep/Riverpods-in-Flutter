import 'dart:convert';

import 'package:flutter/material.dart';

class UserModel{
      final int id;
      final String name;
      final String email;

      UserModel({
        required this.id,
        required this.name,
        required this.email
      });

      // get toJson
      Map<String,dynamic> toJson(){
          return {
              'id' : id,
              'name' : name,
              'email' : email,
          };
      }

      // get data From Json data
      factory UserModel.fromJson(Map<String,dynamic> json){
            return UserModel(
              id: json['id'],
               name: json['name'],
                email: json['email']
                );
      }

      // static encodeds
      static String encoded(UserModel model) => json.encode(model.toJson());
        


}