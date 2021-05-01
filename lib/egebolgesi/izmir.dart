import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class izmir extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("İzmir İli"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 40.0,
              ),
              Text(
                "İzmir'de Yetişen Meyveler",
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                height: 2,
                endIndent: 15.0,
                indent: 15.0,
                color: Colors.black,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Card(
                    clipBehavior: Clip.antiAlias,
                    elevation: 4.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24)),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Ink.image(
                          image: AssetImage("assets/uzum.jpg"),
                          child: InkWell(onTap: () {}),
                          height: 200,
                          width: 350,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Card(
                    clipBehavior: Clip.antiAlias,
                    elevation: 4.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24)),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Ink.image(
                          image: AssetImage("assets/turuncgil.jpg"),
                          child: InkWell(onTap: () {}),
                          height: 200,
                          width: 350,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              //
              SizedBox(
                height: 40.0,
              ),
              Text(
                "İzmir'de Yetişen Sebzeler",
                style: TextStyle(
                  color: Colors.purple,
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                height: 2,
                endIndent: 15.0,
                indent: 15.0,
                color: Colors.black,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Card(
                    clipBehavior: Clip.antiAlias,
                    elevation: 4.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24)),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Ink.image(
                          image: AssetImage("assets/siyahzeytin.jpg"),
                          child: InkWell(onTap: () {}),
                          height: 200,
                          width: 350,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Card(
                    clipBehavior: Clip.antiAlias,
                    elevation: 4.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24)),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Ink.image(
                          image: AssetImage("assets/camfistigi.jpeg"),
                          child: InkWell(onTap: () {}),
                          height: 200,
                          width: 350,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
