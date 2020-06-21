import 'package:flutter/material.dart';

class FormWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Theme(
        data: Theme.of(context).copyWith(
          primaryColor: Colors.black,
        ),
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RegisterForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {

  final registerFormKey = GlobalKey<FormState>();

  String username,password;
  bool autoValidateBool = false;

  void submitRegisterForm () {
    if (registerFormKey.currentState.validate()) {
      registerFormKey.currentState.save();

      print('username: $username');
      print('password: $password');
      
      Scaffold.of(context).showSnackBar(
        SnackBar(
          content: Text('Registering...'),
        )
      );
    }else{
      setState(() {
        autoValidateBool = true;
      });
    }
  }

  String validateUsername (value) {
    if (value.isEmpty) {
      return 'Username is required';
    }

    return null;
  }
  String validatePassword (value) {
    if (value.isEmpty) {
      return 'Password is required';
    }

    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: registerFormKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Username',
              helperText: '',
            ),
            onSaved: (value) {
              return username=value;
            },
            validator: validateUsername,
            autovalidate: autoValidateBool,
          ),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Password',
            ),
            onSaved: (value) {
              return password = value;
            },
            validator: validatePassword,
            autovalidate: autoValidateBool,
          ),
          SizedBox(height: 32.0),
          Container(
            width: double.infinity,
            child: RaisedButton(
              color: Theme.of(context).accentColor,
              child: Text('Register',style: TextStyle(color: Colors.white),),
              elevation: 0.0,
              onPressed: submitRegisterForm,
            ),
          )
        ],
      ),
    );
  }
}


class TextFieldDemo extends StatefulWidget {
  @override
  _TextFieldDemoState createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {

  final textEditingController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    textEditingController.dispose();
    super.dispose();
  }
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
//    textEditingController.text = 'hi';
    textEditingController.addListener(() {
      print('input: ${textEditingController.text}');
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,

//      onChanged: (value) {
//        print('input: $value');
//      },
      onSubmitted: (value) {
        print('submit: $value');
      },
      decoration: InputDecoration(
        icon: Icon(Icons.subject),
        labelText: 'Title',
        hintText: 'Enter the post title.',
        border: OutlineInputBorder(),
        filled: true,
      ),
    );
  }
}

class ThemeDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).accentColor,
    );
  }
}
