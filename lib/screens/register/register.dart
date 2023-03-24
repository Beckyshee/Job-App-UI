import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:my_project_becky/screens/homepage/home_page.dart';
import 'package:my_project_becky/screens/register/input_decoration.dart';
import 'package:http/http.dart' as http;

class FormPage extends StatefulWidget {
  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  //TextController to read text entered in text field
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 241, 240, 240),
      body: Center(
        child: SingleChildScrollView(
          child: Form(
            key: _formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 70,
                  child: Image.network(
                      "https://protocoderspoint.com/wp-content/uploads/2020/10/PROTO-CODERS-POINT-LOGO-water-mark-.png"),
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(bottom: 15, left: 10, right: 10),
                  child: TextFormField(
                    controller: name,
                    keyboardType: TextInputType.text,
                    decoration: buildInputDecoration(Icons.person, "Full Name"),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please Enter Name';
                      }
                      return null;
                    },
                    onSaved: (value) {},
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(bottom: 15, left: 10, right: 10),
                  child: TextFormField(
                    controller: email,
                    keyboardType: TextInputType.text,
                    decoration: buildInputDecoration(Icons.email, "Email"),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please a Enter';
                      }
                      if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                          .hasMatch(value)) {
                        return 'Please a valid Email';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      email = value! as TextEditingController;
                    },
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(bottom: 15, left: 10, right: 10),
                  child: TextFormField(
                    controller: phone,
                    keyboardType: TextInputType.number,
                    decoration: buildInputDecoration(Icons.phone, "Phone No"),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter phone no ';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      phone = value! as TextEditingController;
                    },
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(bottom: 15, left: 10, right: 10),
                  child: TextFormField(
                    controller: password,
                    keyboardType: TextInputType.text,
                    decoration: buildInputDecoration(Icons.lock, "Password"),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please a Enter Password';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(bottom: 15, left: 10, right: 10),
                  child: TextFormField(
                    controller: confirmpassword,
                    obscureText: true,
                    keyboardType: TextInputType.text,
                    decoration:
                        buildInputDecoration(Icons.lock, "Confirm Password"),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please re-enter password';
                      }
                      print(password.text);

                      print(confirmpassword.text);

                      if (password.text != confirmpassword.text) {
                        return "Password does not match";
                      }

                      return null;
                    },
                  ),
                ),
                SizedBox(
                  // width: 200,
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 15, left: 10, right: 10),
                  child: MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    color: Colors.blue,
                    onPressed: () {
                      if (_formkey.currentState!.validate()) {
                        RegisterUser();
                        print("successful");
                        {Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage()));}
                              

                        return;
                      } else {
                        print("UnSuccessfull");
                      }
                      
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                      side: BorderSide(color: Colors.blue, width: 2),
                    ),
                    child: const Text(
                      "Register",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 18),
                    ),
                  ),
                )

                /*child: ElevatedButton(
              
                    //border: RoundedRectangleBorder(
                       // borderRadius: BorderRadius.circular(50.0),
                        //side: BorderSide(color: Colors.blue, width: 2)),
                   // textColor: Colors.white,
                    onPressed: () {
                      if (_formkey.currentState!.validate()) {
                        RegisterUser();
                        print("successful");

                        return;
                      } else {
                        print("UnSuccessfull");
                      }
                    },
                    
                    
                    child: Text("Submit"),
                  ),*/
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future RegisterUser() async {
    var APIURL = "";
    Map mappeddata = {
      'name': name.text,
      'email': email.text,
      'phone':phone.text,
      'password': password.text
    };
    print("JSON DATA: ${mappeddata}");
    var mapeddate;
   // http.Response reponse = await http.post(APIURL,body:mappeddata);
    //getting response from php code, here
   // var data = jsonDecode(reponse.body);
   // print("DATA: ${data}");
  }
}

