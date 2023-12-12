import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

final ktheme = ThemeData.from(
    colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.blue,
        brightness: Brightness.light,
        primary: Colors.lightBlue,
        secondary: Colors.blueGrey));

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ktheme,
      home: Builder(
        builder: (context) => Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 40,
              ),
              Center(
                child: Container(
                  width: 200,
                  height: 180,
                  alignment: Alignment.topCenter,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('lib/assets/dolphin.jpg'),
                      fit: BoxFit.fitWidth,
                      alignment: FractionalOffset.topCenter,
                    ),
                  ),
                ),
              ),
              const Text(
                "Dolphin",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.w300),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Sign Up",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Its's easier to sign up now",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Card(
                margin: const EdgeInsets.symmetric(horizontal: 40),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                color: Colors.blue[900],
                child: ListTile(
                  onTap: () {},
                  contentPadding: const EdgeInsets.symmetric(horizontal: 30),
                  leading: const Icon(
                    Icons.facebook,
                    color: Colors.white,
                  ),
                  title: const Center(
                    child: Text(
                      "Continue with Facebook",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Card(
                  // margin: const EdgeInsets.symmetric(horizontal: 60, vertical: 10),

                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  color: Colors.grey[300],
                  child: const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 60,
                      vertical: 10,
                    ),
                    child: Text(
                      "Continue with Google",
                    ),
                  )),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
