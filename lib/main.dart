import 'package:flutter/material.dart';
import 'meyveler/marmarabolgesi.dart';
import 'meyveler/karadenizbolgesi.dart';
import 'meyveler/icanadolubolgesi.dart';
import 'meyveler/egebolgesi.dart';
import 'meyveler/akdenizbolgesi.dart';
import 'meyveler/doguanadolubolgesi.dart';
import 'meyveler/guneydoguanadolubolgesi.dart';
import 'marmarabolgesiilleri/istanbul.dart';
import 'giris.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      "/": (context) => Login(),
    },
  ));
}

class mainpage extends StatefulWidget {
  final username;
  const mainpage({Key key, @required this.username}) : super(key: key);

  @override
  _mainpageState createState() => _mainpageState();
}

class _mainpageState extends State<mainpage> {
  int _bottomIndex = 0;
  PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Text(widget.username == null ? "Kullanıcı Yok" : widget.username),
      ),
      body: PageView(
        onPageChanged: (index) {
          setState(() {
            _bottomIndex = index;
          });
        },
        controller: _pageController,
        children: [
          SingleChildScrollView(
            child: Container(
              child: Center(
                child: Column(
                  children: [
                    Card(
                      elevation: 4.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24)),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Ink.image(
                            image: AssetImage("assets/meyve3.jpg"),
                            height: 200,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            "TÜRKİYE'NİN MEYVELERİ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                              fontSize: 24,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                      child: Card(
                        elevation: 4.0,
                        clipBehavior: Clip.antiAlias,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(34)),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Ink.image(
                              image: AssetImage(
                                "assets/marmara.png",
                              ),
                              child: InkWell(
                                onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => marmarabolgem())),
                              ),
                              height: 200,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              "Marmara Bölgesi",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 24,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                      child: Card(
                        elevation: 4.0,
                        clipBehavior: Clip.antiAlias,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(34)),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Ink.image(
                              image: AssetImage(
                                "assets/karadeniz.png",
                              ),
                              child: InkWell(
                                onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            karadenizbolgem())),
                              ),
                              height: 200,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              "Karadeniz Bölgesi",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 24,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                      child: Card(
                        elevation: 4.0,
                        clipBehavior: Clip.antiAlias,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(34)),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Ink.image(
                              image: AssetImage(
                                "assets/icanadolu.png",
                              ),
                              child: InkWell(
                                onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            icanadolubolgem())),
                              ),
                              height: 200,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              "İç Anadolu Bölgesi",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 24,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                      child: Card(
                        elevation: 4.0,
                        clipBehavior: Clip.antiAlias,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(34)),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Ink.image(
                              image: AssetImage(
                                "assets/ege.png",
                              ),
                              child: InkWell(
                                onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => egebolgem())),
                              ),
                              height: 200,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              "Ege Bölgesi",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 24,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                      child: Card(
                        elevation: 4.0,
                        clipBehavior: Clip.antiAlias,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(34)),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Ink.image(
                              image: AssetImage(
                                "assets/akdeniz.png",
                              ),
                              child: InkWell(
                                onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => akdenizbolgem())),
                              ),
                              height: 200,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              "Akdeniz Bölgesi",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 24,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                      child: Card(
                        elevation: 4.0,
                        clipBehavior: Clip.antiAlias,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(34)),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Ink.image(
                              image: AssetImage(
                                "assets/doguanadolu.png",
                              ),
                              child: InkWell(
                                onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            doguanadolubolgem())),
                              ),
                              height: 200,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              "Doğu Anadolu Bölgesi",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 24,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                      child: Card(
                        elevation: 4.0,
                        clipBehavior: Clip.antiAlias,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(34)),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Ink.image(
                              image: AssetImage(
                                "assets/guneydogu.png",
                              ),
                              child: InkWell(
                                onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            guneydoguanadolubolgem())),
                              ),
                              height: 200,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              "Güney Doğu Anadolu Bölgesi",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 24,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ),
          ),
          SingleChildScrollView(
            child: Container(
              child: Center(
                child: Column(
                  children: [
                    Card(
                      elevation: 4.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24)),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Ink.image(
                            image: AssetImage("assets/meyve3.jpg"),
                            height: 200,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            "TÜRKİYE'NİN SEBZELERİ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.purple,
                              fontSize: 24,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                      child: Card(
                        elevation: 4.0,
                        clipBehavior: Clip.antiAlias,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(34)),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Ink.image(
                              image: AssetImage(
                                "assets/marmara.png",
                              ),
                              child: InkWell(
                                onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => marmarabolgem())),
                              ),
                              height: 200,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              "Marmara Bölgesi",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 24,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                      child: Card(
                        elevation: 4.0,
                        clipBehavior: Clip.antiAlias,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(34)),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Ink.image(
                              image: AssetImage(
                                "assets/karadeniz.png",
                              ),
                              child: InkWell(
                                onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            karadenizbolgem())),
                              ),
                              height: 200,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              "Karadeniz Bölgesi",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 24,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                      child: Card(
                        elevation: 4.0,
                        clipBehavior: Clip.antiAlias,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(34)),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Ink.image(
                              image: AssetImage(
                                "assets/icanadolu.png",
                              ),
                              child: InkWell(
                                onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            icanadolubolgem())),
                              ),
                              height: 200,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              "İç Anadolu Bölgesi",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 24,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                      child: Card(
                        elevation: 4.0,
                        clipBehavior: Clip.antiAlias,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(34)),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Ink.image(
                              image: AssetImage(
                                "assets/ege.png",
                              ),
                              child: InkWell(
                                onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => egebolgem())),
                              ),
                              height: 200,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              "Ege Bölgesi",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 24,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                      child: Card(
                        elevation: 4.0,
                        clipBehavior: Clip.antiAlias,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(34)),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Ink.image(
                              image: AssetImage(
                                "assets/akdeniz.png",
                              ),
                              child: InkWell(
                                onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => akdenizbolgem())),
                              ),
                              height: 200,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              "Akdeniz Bölgesi",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 24,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                      child: Card(
                        elevation: 4.0,
                        clipBehavior: Clip.antiAlias,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(34)),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Ink.image(
                              image: AssetImage(
                                "assets/doguanadolu.png",
                              ),
                              child: InkWell(
                                onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            doguanadolubolgem())),
                              ),
                              height: 200,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              "Doğu Anadolu Bölgesi",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 24,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                      child: Card(
                        elevation: 4.0,
                        clipBehavior: Clip.antiAlias,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(34)),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Ink.image(
                              image: AssetImage(
                                "assets/guneydogu.png",
                              ),
                              child: InkWell(
                                onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            guneydoguanadolubolgem())),
                              ),
                              height: 200,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              "Güney Doğu Anadolu Bölgesi",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 24,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: Text(
                    "Bu uygulama Dr. Öğretim Üyesi Ahmet Cevahir ÇINAR tarafından yürütülen 3006881 kodlu MOBİL PROGRAMLAMA dersi kapsamında 203301111 numaralı Mustafa ÇAYIRHAN tarafından 30 Nisan 2021 günü yapılmıştır."),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _bottomIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.restaurant),
            title: Text("Meyveler"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fastfood),
            title: Text("Sebzeler"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            title: Text("Hakkımızda"),
          ),
        ],
        onTap: (index) {
          setState(() {
            _bottomIndex = index;
            _pageController.jumpToPage(index);
          });
        },
      ),
    );
  }
}
