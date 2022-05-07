import 'package:flutter/material.dart';
import 'package:stuffcart/screens/registration_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void validation(context) {
    if (emailController.text.isEmpty && passwordController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Both fields are empty"),
          duration: Duration(seconds: 2),
        ),
      );
    } else if (emailController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Empty Email"),
          duration: Duration(seconds: 2),
        ),
      );
    } else if (!RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(emailController.text)) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Invalid Email"),
          duration: Duration(seconds: 2),
        ),
      );
    } else if (passwordController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Empty Password"),
          duration: Duration(seconds: 2),
        ),
      );
    } else if (passwordController.text.length < 6) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Require minimum 6 digits password"),
          duration: Duration(seconds: 2),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final emailField = TextFormField(
      autofocus: false,
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      // validator: ,
      onSaved: (val) {
        emailController.text = val!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.mail, color: Colors.indigo),
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Email Address",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.indigo),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.indigo),
        ),
      ),
    );

    final passwordField = TextFormField(
      autofocus: false,
      controller: passwordController,
      // validator: ,
      onSaved: (val) {
        passwordController.text = val!;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.key, color: Colors.indigo),
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Password",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.indigo),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.indigo),
        ),
      ),
    );

    final loginButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Colors.indigo,
      child: MaterialButton(
        onPressed: () {
          validation(context);
        },
        padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width,
        child: const Text(
          "Login",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        // leading: IconButton(
        //   icon: const Icon(
        //     Icons.arrow_back,
        //     color: Colors.indigo,
        //   ),
        //   onPressed: () {
        //     Navigator.of(context).pop();
        //   },
        // ),
        title: const Text(
          "Login",
          style: TextStyle(color: Colors.indigo),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              color: Colors.white,
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 130,
                      child: Image.asset(
                        'assets/stuffcart_logo.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                    const Text("StuffCart",
                        style: TextStyle(
                          color: Colors.indigo,
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    emailField,
                    const SizedBox(
                      height: 30,
                    ),
                    passwordField,
                    const SizedBox(
                      height: 30,
                    ),
                    loginButton,
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Text("Don't have an account?"),
                        const SizedBox(
                          width: 2,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const RegistrationScreen()));
                          },
                          child: const Text(
                            "SignUp",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
