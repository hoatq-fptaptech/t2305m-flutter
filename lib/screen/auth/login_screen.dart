import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget{
  const LoginScreen({super.key});
  @override
  _StateLogin createState() => _StateLogin();
}
class _StateLogin extends State<LoginScreen>{
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 250.0, horizontal: 30.0),
        child: Column(
          children: [
            TextField(
              controller: emailController,
              decoration:const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: "Enter your email"
              ),
            ),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                labelText: "Password",
                suffixIcon: IconButton(
                  icon: Icon(Icons.visibility),
                  onPressed: (){

                  },
                )
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: FloatingActionButton(
                onPressed: (){},
                child: Text("Login"),
              ),
            )
          ],
        ),
      ),
    );
  }
}