import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Top Image Section
          Container(
            height: 300,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('assets/beautiful.image'),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              padding: const EdgeInsets.all(20),
              alignment: Alignment.bottomLeft,
              child: const Text(
                "User: Yousaf",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ),

          const SizedBox(height: 30),

          // Button
          Container(
            padding: const EdgeInsets.all(20),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FormScreen(),
                  ),
                );
              },
              child: const Text("Open Form"),
            ),
          ),
        ],
      ),
    );
  }
}

// ================= SECOND SCREEN =================

class FormScreen extends StatefulWidget {
  const FormScreen({super.key});

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {

  final TextEditingController name = TextEditingController(text: "Sheraz");
  final TextEditingController email = TextEditingController(text: "arainsheraz@gmail.com");
  final TextEditingController phone = TextEditingController(text: "03283016870");
  final TextEditingController city = TextEditingController(text: "Sadiqabad");
  final TextEditingController age = TextEditingController(text: "22");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("User Form")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [

            TextField(
              controller: name,
              decoration: const InputDecoration(labelText: "Name"),
            ),

            TextField(
              controller: email,
              decoration: const InputDecoration(labelText: "Email"),
            ),

            TextField(
              controller: phone,
              decoration: const InputDecoration(labelText: "Phone"),
            ),

            TextField(
              controller: city,
              decoration: const InputDecoration(labelText: "City"),
            ),

            TextField(
              controller: age,
              decoration: const InputDecoration(labelText: "Age"),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {},
              child: const Text("Submit"),
            )
          ],
        ),
      ),
    );
  }
}