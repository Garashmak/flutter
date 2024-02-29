import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
    debugShowCheckedModeBanner: false,
  ));
}

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final List<String> textPath = [
    "Magtymguly, sözüm gysga, \n şerhi köp ",
    "Şygyrlar",
    "Magtymgulyşynas alymlar",
    "Muzeýler we ýadygärlikler",
    "Halky kyssalar",
    "Ýygymlar",
    "Ömür döredijiligi",
  ];
  final List<String> imagePath = [
    "",
    "assets/images/yelek.png",
        "../assets/images/kitaplar_toplumy.png",
        "../assets/images/muzey.png",
        "../assets/images/golyazgy.png",
        "../assets/images/kitap.png",
         "../assets/images/heykel.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 250, 243, 216),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 250, 243, 216),
          actions: [Icon(Icons.menu)],
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Squares(text: textPath[index], image: imagePath[index]);
          },
          itemCount: imagePath.length,
        ));
  }
}

class Squares extends StatelessWidget {
  final String text;
  final String image;

  const Squares({super.key, required this.text, required this.image});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: const Color.fromARGB(255, 190, 181, 154),
        ),
        height: 90,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              
              padding: const EdgeInsets.all(8.0),
              child: Text(text,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),),
            ),
            Image.asset(
              image,
              // height: 150,
              // width: 150,
            )
          ],
        ),
      ),
    );
  }
}
