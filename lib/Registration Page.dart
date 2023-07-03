import 'package:flutter/material.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Registration Page"),
    ),
      body: Column(
          children: [
      Padding(
        padding: const EdgeInsets.all(12.0),
        child: TextField(
          decoration: InputDecoration(
            hintText: "Name",
            helperText: "Full Name must be in Uppercase",
            labelText: "Name",
            prefixIcon: Icon(Icons.person_outline_rounded),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
          ),
        ),
        ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "User Name",
                  helperText: "User name must be an Email ID",
                  labelText: "User Name",
                  prefixIcon: Icon(Icons.alternate_email),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Password",
                  helperText: "Minimum Six Characters required , First Charater must be in Upper case and there should be an special character.",
                  helperMaxLines: 100,
                  labelText: "Password",
                  prefixIcon: Icon(Icons.lock_outline_rounded),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Confirm Password",
                  helperText: "",
                  labelText: "Confirm Password",
                  prefixIcon: Icon(Icons.lock),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                ),
              ),
            ),
            ElevatedButton(onPressed: (){}, child: Text("Register")),
          ],
      )
    );
    }
}