import 'dart:convert';
import 'package:flutter_seminario/Screens/home_users.dart';
import 'package:get/get.dart';
import 'package:flutter_seminario/Models/UserModel.dart';
import 'package:dio/dio.dart' as Dio; // Usa un prefijo 'Dio' para importar la clase Response desde Dio

class UserService {
  final String baseUrl = "http://127.0.0.1:3000"; // URL de tu backend
  final Dio.Dio dio = Dio.Dio(); // Usa el prefijo 'Dio' para referenciar la clase Dio

var statusCode;
var data;
//Función createUser
Future<int> createUser(User newUser)async{
    print('createUser');
        print('try');
        //Aquí llamamos a la función request
        print('request');
        // Utilizar Dio para enviar la solicitud POST a http://127.0.0.1:3000/users
        Dio.Response response = await dio.post('$baseUrl/users', data: newUser.toJson());
        //En response guardamos lo que recibimos como respuesta
        //Printeamos los datos recibidos

        data = response.data.toString();
        print('Data: $data');
        //Printeamos el status code recibido por el backend

        statusCode = response.statusCode;
        print('Status code: $statusCode');

        if (statusCode == 201) {
      // Si el usuario se crea correctamente, retornamos el código 201
          print('201');
          return 201;
        } else if (statusCode == 400) {
          // Si hay campos faltantes, retornamos el código 400
                print('400');

          return 400;
        } else if (statusCode == 500) {
          // Si hay un error interno del servidor, retornamos el código 500
                print('500');

          return 500;
        } else {
          // Otro caso no manejado
                print('-1');

          return -1;
        }
 
    }
  }



