import 'package:flutter/material.dart';
import 'package:stackchat/colors/colors.dart';
import 'package:stackchat/models/status_model.dart';
import 'package:stackchat/widgets/image_popup.dart';

class StatusPage extends StatelessWidget {
  StatusPage({super.key});

  List<StatusModel> statusList = [
    StatusModel(
        name: "Jorge Henry",
        imageURL:
            "https://www.shutterstock.com/image-photo/image-handsome-smiling-young-african-260nw-722913181.jpg",
        time: "20 min ago"),
    StatusModel(
        name: "Philip Fox",
        imageURL:
            "https://www.shutterstock.com/image-photo/human-face-260nw-371192081.jpg",
        time: "23 hrs ago"),
    StatusModel(
        name: "Jane Russel",
        imageURL:
            "https://img.freepik.com/free-photo/indoor-shot-beautiful-happy-african-american-woman-smiling-cheerfully-keeping-her-arms-folded-relaxing-indoors-after-morning-lectures-university_273609-1270.jpg",
        time: "Now"),
    StatusModel(
        name: "Debra Hawkins",
        imageURL:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTF5bkKSg6FgDrFlVw5A4nR77-9bbmDX3WHXnakxBrlxR5UkQPYJHkpYEUFTb6ki0Ydb8I&usqp=CAU",
        time: "Now"),
    StatusModel(
        name: "John Wick",
        imageURL:
            "https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
        time: "2hrs ago"),
    StatusModel(
        name: "Jorge Henry",
        imageURL:
            "https://www.shutterstock.com/image-photo/image-handsome-smiling-young-african-260nw-722913181.jpg",
        time: "20 min ago"),
    StatusModel(
        name: "Philip Fox",
        imageURL:
            "https://www.shutterstock.com/image-photo/human-face-260nw-371192081.jpg",
        time: "23 hrs ago"),
    StatusModel(
        name: "Jane Russel",
        imageURL:
            "https://img.freepik.com/free-photo/indoor-shot-beautiful-happy-african-american-woman-smiling-cheerfully-keeping-her-arms-folded-relaxing-indoors-after-morning-lectures-university_273609-1270.jpg",
        time: "Now"),
    StatusModel(
        name: "Debra Hawkins",
        imageURL:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTF5bkKSg6FgDrFlVw5A4nR77-9bbmDX3WHXnakxBrlxR5UkQPYJHkpYEUFTb6ki0Ydb8I&usqp=CAU",
        time: "Now"),
    StatusModel(
        name: "John Wick",
        imageURL:
            "https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
        time: "2hrs ago"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 30),
        child: FloatingActionButton(
          shape: const CircleBorder(),
          backgroundColor: iconBackColor,
          foregroundColor: textColor,
          onPressed: () {},
          child: const Icon(Icons.camera_alt_outlined),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // search bar
            Container(
              color: appHeadcontainerColor,
              child: TextFormField(
                decoration: const InputDecoration(
                    hintText: "Search ",
                    hintStyle: TextStyle(color: Color(0xFF18252D)),
                    disabledBorder: InputBorder.none,
                    contentPadding: EdgeInsets.only(left: 20),
                    hintTextDirection: TextDirection.ltr),
              ),
            ),

            // all user status
            ListView.builder(
              itemCount: statusList.length,
              shrinkWrap: true,
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Container(
                  padding: const EdgeInsets.only(
                      left: 16, right: 16, top: 10, bottom: 10),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Row(
                          children: <Widget>[
                            CircleAvatar(
                              maxRadius: 33,
                              backgroundColor: iconBackColor,
                              child: CircleAvatar(
                                backgroundImage:
                                    NetworkImage(statusList[index].imageURL),
                                maxRadius: 30,
                                child: GestureDetector(
                                  onTap: () async {
                                    await showDialog(
                                        context: context,
                                        builder: (_) => ImageDialog(
                                              image: statusList[index].imageURL,
                                            ));
                                  },
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                            Expanded(
                              child: Container(
                                color: Colors.transparent,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      statusList[index].name,
                                      style: const TextStyle(fontSize: 16),
                                    ),
                                    const SizedBox(
                                      height: 6,
                                    ),
                                    Text(
                                      statusList[index].time,
                                      style: TextStyle(
                                        fontSize: 13,
                                        color: Colors.grey.shade600,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
