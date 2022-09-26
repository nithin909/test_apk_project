import 'package:flutter/material.dart';
import 'package:test_project/View/products.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}


class MyCustomFormState extends State<LoginPage> {

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          SizedBox(height: 100,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(

              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter User Email',
                hintText: 'user@gmail.com'
              ),
              // The validator receives the text that the user has entered.
              validator: (value) {
                if (value == null || !(value.contains('@')) || value.isEmpty) {
                  return 'Please enter valid email';
                }
                return null;
              },
            ),
          ),

          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter Password',
                hintText: 'Your password here'
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter the Password';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Center(
              child: ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.push(context,
                        MaterialPageRoute(builder:
                            (context) => Products()
                        )
                    );

                  }
                },
                child: const Text('Submit'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}