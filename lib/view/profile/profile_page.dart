import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
              top: 0,
              child: Container(
                height: 180,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://msmobile.com.vn/upload_images/images/hinh-nen-dep-cho-may-tinh-full-hd-2.jpg"),
                        fit: BoxFit.cover)),
              )),
          Positioned(
              right: 10,
              top: 40,
              child: SizedBox(
                height: 40,
                width: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          CupertinoIcons.bubble_right,
                          color: Colors.white,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.settings,
                          color: Colors.white,
                        )),
                  ],
                ),
              )),
          Positioned(
              top: 100,
              left: 20,
              child: SizedBox(
                height: 60,
                width: 250,
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                          "https://pdp.edu.vn/wp-content/uploads/2021/05/hinh-anh-avatar-nam-1.jpg"),
                    ),
                    const SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Đỗ Viết Hùng",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Container(
                          height: 20,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white54),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "Thành viên bạc",
                                style: TextStyle(fontSize: 10),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 10,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              )),
          Positioned(
              top: 200,
              child: Container(
                height: 80,
                width: MediaQuery.of(context).size.width,
                // color: const Color.fromRGBO(245, 245, 248, 1),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.description,
                              size: 35,
                              color: Colors.grey[700],
                            )),
                        Text("Chờ xác nhận", style: TextStyle(fontSize: 12),)
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.double_arrow,
                              size: 35,
                              color: Colors.grey[700],
                            )),
                        Text("Đang chuẩn bị", style: TextStyle(fontSize: 12),)
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.local_shipping_outlined,
                              size: 35,
                              color: Colors.grey[700],
                            )),
                        Text("Đang giao", style: TextStyle(fontSize: 12),)
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.local_police_outlined,
                              size: 35,
                              color: Colors.grey[700],
                            )),
                        Text("Đánh giá", style: TextStyle(fontSize: 12),)
                      ],
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
