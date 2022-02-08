import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ItemListCart extends StatefulWidget {
  const ItemListCart({Key? key}) : super(key: key);

  @override
  _ItemListCartState createState() => _ItemListCartState();
}

class _ItemListCartState extends State<ItemListCart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color.fromRGBO(255, 107, 67, 10),
          borderRadius: BorderRadius.circular(20)),
      margin: const EdgeInsets.only(bottom: 10),
      height: 80,
      width: double.infinity,
      child: Slidable(
        endActionPane: ActionPane(
            extentRatio: 0.2,
            motion: const ScrollMotion(),
            children: <Widget>[
              Expanded(
                  child: InkWell(
                child: Container(
                  decoration: const BoxDecoration(
                      color: Color.fromRGBO(255, 107, 67, 10),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20))),
                  child: const Icon(
                    Icons.delete,
                    color: Colors.white,
                  ),
                ),
              ))
            ]),
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: const Color.fromRGBO(245, 245, 248, 1),
              borderRadius: BorderRadius.circular(20)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.18,
                    height: 60,
                    child: Image.asset(
                      "assets/images/cake_rolls.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 10),
                    width: MediaQuery.of(context).size.width * 0.35,
                    height: 60,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Stuffed pancake",
                          style: TextStyle(fontSize: 12),
                        ),
                        Text(
                          "\$15.99",
                          style: TextStyle(
                              color: Color.fromRGBO(255, 107, 67, 10),
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.3,
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.remove,
                          color: const Color.fromRGBO(255, 107, 67, 10),
                        )),
                    Text(
                      "1",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.add,
                            color: const Color.fromRGBO(255, 107, 67, 10)))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
