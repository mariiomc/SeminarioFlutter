import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_seminario/Models/PlaceModel.dart';
import 'package:flutter_seminario/Models/UserModel.dart';
import 'package:flutter_seminario/Screens/home_page.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';
import 'package:dio/dio.dart' ;
import 'dart:io';


class UserDetailsPage extends StatelessWidget {
  final User user;
  

const UserDetailsPage(this.user, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Details'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Name: ${user.first_name} ${user.last_name}'),
            Text('Email: ${user.email}'),
            Text('Gender: ${user.gender}'),
            Text('Role: ${user.role}'),
            Text('Phone Number: ${user.phone_number}')
            // Add more user details here as needed
          ],
        ),
      ),
    );
  }
}