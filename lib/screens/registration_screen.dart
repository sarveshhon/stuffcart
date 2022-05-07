import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController firstNameEditingController =
      TextEditingController();
  final TextEditingController lastNameEditingController =
      TextEditingController();
  final TextEditingController emailEditingController = TextEditingController();
  final TextEditingController passwordEditingController =
      TextEditingController();
  final TextEditingController confirmPasswordEditingController =
      TextEditingController();

  void validation(context) {
    if (firstNameEditingController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Empty First Name"),
          duration: Duration(seconds: 2),
        ),
      );
    } else if (lastNameEditingController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Empty Last Name"),
          duration: Duration(seconds: 2),
        ),
      );
    } else if (emailEditingController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Empty Email"),
          duration: Duration(seconds: 2),
        ),
      );
    } else if (lastNameEditingController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Empty Password"),
          duration: Duration(seconds: 2),
        ),
      );
    } else if (lastNameEditingController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Empty Confirm Password"),
          duration: Duration(seconds: 2),
        ),
      );
    } else if (!RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(emailEditingController.text)) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Invalid Email"),
          duration: Duration(seconds: 2),
        ),
      );
    } else if (passwordEditingController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Empty Password"),
          duration: Duration(seconds: 2),
        ),
      );
    } else if (passwordEditingController.text.length < 6) {
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
    final firstNameField = TextFormField(
      autofocus: false,
      controller: firstNameEditingController,
      keyboardType: TextInputType.name,
      // validator: ,
      onSaved: (val) {
        firstNameEditingController.text = val!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon:
            const Icon(Icons.account_circle_rounded, color: Colors.indigo),
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "First Name",
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

    final lastNameField = TextFormField(
      autofocus: false,
      controller: lastNameEditingController,
      keyboardType: TextInputType.name,
      // validator: ,
      onSaved: (val) {
        lastNameEditingController.text = val!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon:
            const Icon(Icons.account_circle_rounded, color: Colors.indigo),
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Last Name",
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

    final emailField = TextFormField(
      autofocus: false,
      controller: emailEditingController,
      keyboardType: TextInputType.emailAddress,
      // validator: ,
      onSaved: (val) {
        emailEditingController.text = val!;
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
      controller: passwordEditingController,
      keyboardType: TextInputType.emailAddress,
      // validator: ,
      onSaved: (val) {
        passwordEditingController.text = val!;
      },
      textInputAction: TextInputAction.next,
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

    final confirmPasswordField = TextFormField(
      autofocus: false,
      controller: confirmPasswordEditingController,
      keyboardType: TextInputType.emailAddress,
      // validator: ,
      onSaved: (val) {
        confirmPasswordEditingController.text = val!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.key, color: Colors.indigo),
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Confirm Password",
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

    final signUpButton = Material(
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
          "SignUp",
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
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.indigo,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text(
          "Create Account",
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
                      height: 150,
                      child: Image.asset(
                        'assets/stuffcart_logo.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    firstNameField,
                    const SizedBox(
                      height: 30,
                    ),
                    lastNameField,
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
                    confirmPasswordField,
                    // loginButton,
                    const SizedBox(
                      height: 30,
                    ),
                    signUpButton,
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
