import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RowChooseSizeProduct extends StatefulWidget {
  const RowChooseSizeProduct({Key? key}) : super(key: key);

  @override
  _RowChooseSizeProductState createState() => _RowChooseSizeProductState();
}

class _RowChooseSizeProductState extends State<RowChooseSizeProduct> {
  // index list
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 60,
          child: Text(
            "Sizes:",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 50,
          width: MediaQuery.of(context).size.width * 0.7,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(5),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          minimumSize: const Size(40, 40),
                          maximumSize: const Size(45, 45),
                          onPrimary: (this.index == index)
                              ? Colors.white
                              : Colors.grey,
                          primary: (this.index == index)
                              ? const Color.fromRGBO(255, 107, 67, 10)
                              : Colors.white,
                          side: BorderSide(
                              width: 1,
                              color: (this.index == index)
                                  ? const Color.fromRGBO(255, 107, 67, 10)
                                  : Colors.grey)),
                      onPressed: () {
                        setState(() {
                          this.index = index;
                        });
                      },
                      child: Text("$index")),
                );
              }),
        )
      ],
    );
  }
}
