import 'package:education_app_ui/Utils/colors.dart';
import 'package:flutter/material.dart';

class HomeScree extends StatelessWidget {
  const HomeScree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 45),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.network(
                    "https://github.com/Adriel-Castaneda0565/jugueteria_imagenes_app/blob/main/menu.png?raw=true",
                    height: 40,
                    width: 40,
                  ),
                  Image.network(
                    "https://github.com/Adriel-Castaneda0565/jugueteria_imagenes_app/blob/main/shuare.png?raw=true",
                    height: 40,
                    width: 40,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Text(
                            "Hola Adri",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 30),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Image.network(
                            "https://github.com/Adriel-Castaneda0565/jugueteria_imagenes_app/blob/main/hola.png?raw=true",
                            height: 30,
                            width: 30,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "Hoy es un gran dia\npara aprender algo nuevo!",
                        style: TextStyle(color: Colors.black54, fontSize: 17),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Image.network(
                    "https://github.com/Adriel-Castaneda0565/jugueteria_imagenes_app/blob/main/perfil.png?raw=true",
                    height: 110,
                    width: 110,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Card(
                    color: primaryColor,
                    child: const SizedBox(
                      height: 50,
                      width: 90,
                      child: Center(
                        child: Text(
                          "Lo nuevo",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  const Text(
                    "Diseño",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  const Text("Marketing",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      )),
                  Image.network(
                    "https://github.com/Adriel-Castaneda0565/jugueteria_imagenes_app/blob/main/filtro.png?raw=true",
                    height: 40,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Categories",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      )),
                  Text(
                    "Ver Todo",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              height: 300,
              width: double.infinity,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                    Colors.white,
                    Color.fromARGB(255, 233, 236, 246)
                  ])),
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    child: displayImage(170, "https://github.com/user-attachments/assets/691eac9c-a7f7-4d89-8cfc-c06fc6793036"),
                  ),
                  Positioned(
                    right: 0,
                    child: displayImage(180, "https://github.com/user-attachments/assets/691eac9c-a7f7-4d89-8cfc-c06fc6793036"),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 90,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10, left: 15, right: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Card(
                                  color: primaryColor,
                                  child: const SizedBox(
                                    height: 50,
                                    width: 50,
                                    child: Icon(
                                      Icons.home,
                                      size: 35,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                const Icon(
                                  Icons.watch_later,
                                  color: Colors.black45,
                                  size: 35,
                                ),
                                const Icon(
                                  Icons.favorite,
                                  color: Colors.black45,
                                  size: 35,
                                ),
                                const Icon(
                                  Icons.person_2,
                                  color: Colors.black45,
                                  size: 35,
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40,top: 5),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: primaryColor,
                                  borderRadius: BorderRadius.circular(200),
                                  ),
                                  height: 12,
                                  width: 12,
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding displayImage(double heigh, image) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: Expanded(
          child: SizedBox(
        height: heigh,
        width: 193,
        child: Image.network(
          image,
          fit: BoxFit.fill,
        ),
      )),
    );
  }
}