import 'package:dio/src/response.dart';
import 'package:flutter/material.dart';
import 'package:mecha/screens/signup/signup_model.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../services/dioClient.dart';
import '../../widgets/my_button.dart';
import 'package:mecha/screens/signin/signin.dart';

import '../components/social_icons.dart';
import '../select_cars.dart';

class Signup extends StatefulWidget {
  Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final dioClient = DioClient();
  TextEditingController name = TextEditingController();
  TextEditingController pass = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController email = TextEditingController();

  Future<Response> signUpUser() async {
    print(name.text);
    print(pass.text);
    print(email.text);
    print(phone.text);
    try {
      final Response response =
          await dioClient.dio.post('/ga-customer/customers/signUp', data: {
        "name": name.text,
        "password": pass.text,
        "phone": {"phone": phone.text},
        "email": {"email": email.text}
      });

      final signupModel = SignUpModel.fromJson(response.data);

      SharedPreferences sharedPreferences =
          await SharedPreferences.getInstance();
      sharedPreferences.setString('id', signupModel.id as String);

      print(signupModel.id);
      return response;
    } catch (e) {
      rethrow;
    }
  }

  // void signUpUser() async {
  //   var url = "https://garagewa.loca.lt/ga-customer/customers/signUp";
  //   // var data = {
  //   //   "name": name.text,
  //   //   "password": pass.text,
  //   //   "phone": {"phone": phone.text},
  //   //   "email": {"email": email.text}
  //   // };
  //   // print(data);
  //   // SignUpModel signUpModel = SignUpModel();

  //   // var bodyy = json.encode(data);
  //   // var bodyy = signUpModel.toJson();
  //   var urlParse = Uri.https(url);
  //   Response response = await http.post(
  //     urlParse,
  //     body: {
  //       "name": name.text,
  //       "password": pass.text,
  //       "phone": {"phone": phone.text},
  //       "email": {"email": email.text}
  //     },
  //   );
  //   // var datta = jsonDecode(response.body);
  //   // print(datta);
  //   print(response.body);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    Text(
                      'Sign Up',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              MyTextField(
                controller: name,
                hintText: 'Name',
                obscureText: false,
              ),
              SizedBox(
                height: 20,
              ),
              MyTextField(
                controller: email,
                hintText: 'Email',
                obscureText: false,
              ),
              SizedBox(
                height: 20,
              ),
              MyTextField(
                controller: phone,
                hintText: 'Phone',
                obscureText: false,
              ),
              SizedBox(
                height: 20,
              ),
              MyTextField(
                controller: pass,
                hintText: 'Password',
                obscureText: true,
              ),
              SizedBox(
                height: 20,
              ),
              MyTextField(
                controller: pass,
                hintText: 'Confirm Password',
                obscureText: true,
              ),
              SizedBox(
                height: 20,
              ),
              MyButton(
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => SignIn()));
                },
                //signUpUser,
                text: 'Sign Up',
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    Text('Already have an accoutnt?'),
                    GestureDetector(
                      child: Text(
                        'Sign In',
                        style: TextStyle(color: Colors.red),
                      ),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => SignIn()));
                      },
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialIcon(
                    iconSrc:
                        'https://imgs.search.brave.com/Tg5B7jIKi8NiJ0xeuAAjbEc_VxxvcBWem3_IkgFIAT8/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9jZG4u/aWNvbi1pY29ucy5j/b20vaWNvbnMyLzY4/Ni9QTkcvNTEyL3Nv/Y2lhbF9zb2NpYWxf/bWVkaWFfc29jaWFs/X25ldHdvcmtfZmFj/ZWJvb2tfbG9nb3R5/cGVfbmV0d29ya19y/ZWRfaWNvbi1pY29u/cy5jb21fNjEyMzUu/cG5n',
                    press: () {},
                  ),
                  SocialIcon(
                    iconSrc:
                        'https://imgs.search.brave.com/ge2OjzatG8Pw2_1lNjuyds4amo_BJ3AMmc4QKYdIZ8Y/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9wYXJz/cG5nLmNvbS93cC1j/b250ZW50L3VwbG9h/ZHMvMjAyMS8wOS9J/bnN0YWdyYW0ucGFy/c3BuZy5jb20tNS5w/bmc',
                    press: () {},
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}

class MyTextField extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;

  const MyTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
                borderRadius: BorderRadius.circular(50)),
            fillColor: Colors.white,
            filled: true,
            hintText: hintText),
      ),
    );
  }
}
