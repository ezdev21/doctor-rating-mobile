import "package:flutter/material.dart";

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _emailcontroller = TextEditingController();
  TextEditingController _passwordcontroller = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _emailcontroller.dispose();
    _passwordcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
            autofocus: true,
            controller: _emailcontroller,
            validator: (value) {
              return value.isEmpty ? 'email required' : null;
            },
            style: TextStyle(
             color:Colors.blue[700],
             fontSize:20.0,              
            ),
            decoration: InputDecoration(
                hintText: 'email',
                labelText: 'email',
                filled: true,
                fillColor: Colors.white),
          ),
          TextFormField(
            controller: _passwordcontroller,
            validator: (value) {
              return value.isEmpty ? 'password required' : null;
            },
            obscureText: true,
            style: TextStyle(
             color:Colors.blue[700],
             fontSize: 20,
            ),
            decoration: InputDecoration(
                hintText: 'password',
                labelText: 'password',
                filled: true,
                fillColor: Colors.white),
          ),
          TextButton(
              onPressed: () {
                Map creds = {
                  'email':_emailcontroller,
                  'password':_passwordcontroller,
                  'device_name':'mobile'
                };
                if (_formKey.currentState.validate()) {}
              },
              style: TextButton.styleFrom(primary: Colors.blue[700]),
              child: Text('Login'),
              style: TextStyle(color: Colors.white, fontSize: 20))
        ],
      ),
    ));
  }
}
