import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ListC extends StatelessWidget {
  final IconData icon1;
  final IconData icon2;
  final texts;
  const ListC(
      {super.key,
      required this.icon1,
      required this.icon2,
      required this.texts});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 11),
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 214, 207, 207), borderRadius: BorderRadius.circular(22)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(icon1),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    texts,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Icon(icon2)
            ],
          ),
        ),
      ),
    );
  }
}
