import 'package:flutter/material.dart';
import 'package:sos_call/views/home_ui.dart';

class SplashScreenUI extends StatefulWidget {
  const SplashScreenUI({Key? key}) : super(key: key);

  @override
  State<SplashScreenUI> createState() => _SplashScreenUIState();
}

class _SplashScreenUIState extends State<SplashScreenUI> {
  @override
  void initState() {
    //โค้ด SplashScreen
    Future.delayed(
      Duration(
        seconds: 2,
      ),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => HomeUI(),
        ),
      ),
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 100.0,
              backgroundColor: Colors.transparent,
              backgroundImage: AssetImage(
                'assets/images/icon.png',
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'เบอร์โทรสายด่วน',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            CircularProgressIndicator(
              color: Colors.red,
              strokeWidth: 8.0,
            ),
          ],
        ),
      ),
    );
  }
}
