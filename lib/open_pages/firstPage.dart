import 'package:benideal/open_pages/loginPage.dart';
import 'package:benideal/open_pages/signPage.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Benideal'
          ),
        ),
        body: SafeArea(
          child:
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Senin yolculuğun. Senin seçimin',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 45
                    ),),
                    ElevatedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                      print('Login');
                    }, child: Text('Giriş Yap'),
                        style: ButtonStyle(
                          fixedSize: MaterialStateProperty.all(Size(double.maxFinite,double.nan)),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                )
                            )
                        ),),
                    ElevatedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SignPage()));
                      print('signup');
                    }, child: Text('Kaydol'),
                        style: ButtonStyle(
                            fixedSize: MaterialStateProperty.all(Size(double.maxFinite,double.nan)),
                            backgroundColor: MaterialStateProperty.all(Colors.transparent),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                )
                            )
                        )
                    ),
                    ],
                ),
              ),
          ),
        ),
      );
  }
}

