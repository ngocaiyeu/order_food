import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:order_fast_food/shared/themes.dart';

class PersonRating extends StatefulWidget {
  const PersonRating({Key? key}) : super(key: key);

  @override
  _PersonRatingState createState() => _PersonRatingState();
}

class _PersonRatingState extends State<PersonRating> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            decoration: const BoxDecoration(
                border: Border(top: BorderSide(color: Color(0xFFE0E0E0), width: 1))),
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                        margin: const EdgeInsets.only(right: 15),
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(255, 107, 67, 10),
                            borderRadius: BorderRadius.circular(10)),
                        height: 50,
                        width: 50,
                        child: Image.asset(
                          "assets/images/person_icon.png",
                          fit: BoxFit.cover,
                        )),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Totoya Food",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        Text("1.2 Km from you", style: MyTheme.textLoginForgot)
                      ],
                    )
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow[700],
                    ),
                    Icon(Icons.star, color: Colors.yellow[700]),
                    Icon(Icons.star, color: Colors.yellow[700]),
                    Icon(Icons.star, color: Colors.yellow[700]),
                    Icon(Icons.star, color: Colors.yellow[100]),
                  ],
                )
              ],
            ),
          );
        });
  }
}
