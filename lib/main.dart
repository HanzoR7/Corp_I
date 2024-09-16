import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ПР2 ПКС',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Authorization(),
    );
  }
}


class Authorization extends StatelessWidget {
  const Authorization({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(75.0),
              child: Text('Авторизация',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
              child: TextField(decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
                hintText: "Логин",
                hintStyle: const TextStyle(
                    color: Colors.grey,
                ),
                fillColor: Colors.grey[200],
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  borderSide: const BorderSide(
                    width: 0,
                    style: BorderStyle.none
                  )
                ),

              ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
                hintText: "Пароль",
                hintStyle: const TextStyle(
                  color: Colors.grey,
                ),
                fillColor: Colors.grey[200],
                filled: true,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide: const BorderSide(
                        width: 0,
                        style: BorderStyle.none
                    )
                ),

              ),
              ),
            ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Checkbox(
                value: false,
                onChanged: (bool? value){},
                side: const BorderSide(color: Colors.grey, width: 1.5),
              checkColor: Colors.black,
            ),
            const Text("Запомнить меня",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16.0
              )
            )
          ],

        ),
        const SizedBox(
          height: 10.0
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
          width: double.infinity,
                child: ElevatedButton(
                    onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[800],
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                    child: const Text("Войти",
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                        )
                    )
                ),
              ),
            Container(
              padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
              width: double.infinity,
              child: OutlinedButton(
                  onPressed: (){},
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.blue[700],
                    side: BorderSide(
                      color: Colors.blue[400]!,
                      width: 2.0,
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  child: const Text("Регистрация",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                      )
                  )
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: TextButton(
                  onPressed: (){},
                  child:  Text("Восстановить пароль",
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.grey[500],
                        fontWeight: FontWeight.w400,

                      )
                  )
              )
            )
          ],
        ),
      ),
    );
  }
}
