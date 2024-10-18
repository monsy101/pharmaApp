
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    userData.dispose();
  }

  final userData = TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool isShowPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 40,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (String? value) {
                    if (value?.isEmpty == true) {
                      return "user Mast Have name";
                    }
                    return null;
                  },
                  controller: userData,
                  // for user data
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    errorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.red,
                        ),
                        borderRadius: BorderRadius.circular(15)),
                    focusedErrorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.red,
                          width: 3,
                        ),
                        borderRadius: BorderRadius.circular(15)),
                    enabledBorder:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                    focusedBorder:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                    prefixIcon: const Icon(
                      Icons.person_2_rounded,
                      color: Colors.blue,
                    ),
                    hintText: 'User name',
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (String? value) {
                    String emailPattern =
                        r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';
                    RegExp regex = RegExp(emailPattern);
                    bool validEmail = regex.hasMatch(value ?? "");
                    if (!validEmail) {
                      return "enter valid Email";
                    }
                    return null;
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    focusedErrorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.red,
                          width: 3,
                        ),
                        borderRadius: BorderRadius.circular(15)),
                    enabledBorder:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                    focusedBorder:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                    errorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.red,
                        ),
                        borderRadius: BorderRadius.circular(15)),
                    prefixIcon: const Icon(
                      Icons.mail,
                      color: Colors.blue,
                    ),
                    hintText: 'Email',
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (String? value) {
                    if (value?.isEmpty == true) {
                      return "password mast have value";
                    }
                    if ((value?.length ?? 0) < 4) {
                      return "password mast have value";
                    }
                    return null;
                  },
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: isShowPassword,
                  decoration: InputDecoration(
                    errorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.red,
                        ),
                        borderRadius: BorderRadius.circular(15)),
                    focusedErrorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.red,
                          width: 3,
                        ),
                        borderRadius: BorderRadius.circular(15)),
                    enabledBorder:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                    focusedBorder:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                    prefixIcon: const Icon(
                      Icons.password_rounded,
                      color: Colors.blue,
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          isShowPassword = !isShowPassword;
                        });
                      },
                      icon: Icon(
                        isShowPassword ? Icons.visibility_off : Icons.visibility,
                        color: Colors.blue.withOpacity(1),
                      ),
                    ),
                    hintText: 'Enter your Password',
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const SizedBox(
                  width: double.infinity,
                  child: Divider(
                    color: Colors.blue,
                    thickness: 1.4,
                  ),
                ),
                // SizedBox(
                //   height: 20,
                // ),
                TextButton(
                    onPressed: () {
                      // print(userData.text);
                    },
                    child: const Text(
                      'Forgot Password?',
                      style: TextStyle(color: Colors.blue),
                    )),
                ElevatedButton(
                  onPressed: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => HomeAppScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      shadowColor: Colors.blue,
                      backgroundColor: Colors.blue,
                      minimumSize: const Size(double.infinity, 50)),
                  child: const Opacity(
                      opacity: 1,
                      child: Text(
                        'Login',
                        style: TextStyle(color: Colors.blue, fontSize: 24),
                      )),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("don't have account"),
                    TextButton(
                        onPressed: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (BuildContext context) =>
                          //             SignupScreen()));
                        },
                        child: const Opacity(
                          opacity: 1,
                          child: Text(
                            'Sign up',
                            style: TextStyle(color: Colors.blue, fontSize: 15),
                          ),
                        )),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
