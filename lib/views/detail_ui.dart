import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: must_be_immutable
class DetailUI extends StatefulWidget {
  String? name;
  String? mobile;
  String? image;

  DetailUI({
    this.name,
    this.mobile,
    this.image,
  });

  @override
  State<DetailUI> createState() => _DetailUIState();
}

class _DetailUIState extends State<DetailUI> {
  Future<void> _launchInBrowser(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Could not launch $url';
    }
  }

  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('รายละเอียด'),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 5,
            ),
            Image.asset(
              'assets/images/' + widget.image!,
              height: 200,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              width: MediaQuery.of(context).size.width - 80.0,
              child: Card(
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(
                        FontAwesomeIcons.building,
                        color: Colors.black,
                      ),
                      title: Text(
                        widget.name!,
                      ),
                    ),
                    ListTile(
                      onTap: () {
                        _makePhoneCall(widget.mobile!);
                      },
                      leading: Icon(
                        FontAwesomeIcons.phone,
                        color: Colors.red,
                      ),
                      title: Text(
                        widget.mobile!,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
