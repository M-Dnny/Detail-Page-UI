import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class DetailUI extends StatelessWidget {
  const DetailUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Positioned(
                  child: SizedBox(
                    height: size / 1.8,
                    // color: Colors.yellow,
                    child: Stack(
                      children: [
                        Positioned(
                          child: Container(
                            height: size / 2,
                            // color: Colors.black38,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                  'https://images.unsplash.com/photo-1548013146-72479768bada?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8dGFqJTIwbWFoYWx8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=60',
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Positioned(
                          bottom: 0,
                          right: 15,
                          child: CircleAvatar(
                            radius: 50,
                            backgroundImage: NetworkImage(
                                'https://www.thefamouspeople.com/profiles/images/shah-jahan-6.jpg'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                    right: 0,
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      child: const Icon(Icons.favorite_border_rounded,
                          size: 30, color: Colors.white),
                    )),
              ],
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Taj Mahal',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Text(
                      'One of the most beautiful monuments, and one of the wonders of the world.',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          color: Colors.grey.shade600))
                ],
              ),
            ),
            SizedBox(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  rowIconText('20', Icons.favorite_border_rounded),
                  rowIconText('34', Icons.upload_rounded),
                  rowIconText('82', Icons.message_rounded),
                  rowIconText('295', Icons.face_rounded),
                ],
              ),
            ),
            const Divider(color: Colors.grey),
            Container(
              padding: const EdgeInsets.all(10),
              child: const Text(
                'An immense mausoleum of white marble, built in Agra between 1631 and 1648 by order of the Mughal emperor Shah Jahan in memory of his favourite wife, the Taj Mahal is the jewel of Muslim art in India. This monument is recognizable to people around the world because of its symmetry, white marble, and the love story that brought it to life.',
                style: TextStyle(fontSize: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget rowIconText(String text, IconData icon) {
    return Row(
      children: [
        Text(
          text,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(width: 5),
        Icon(icon)
      ],
    );
  }
}
