import 'package:flutter/material.dart';
import 'package:stackchat/colors/colors.dart';
import 'package:stackchat/models/call_model.dart';
import 'package:stackchat/widgets/image_popup.dart';

class CallPage extends StatelessWidget {
  CallPage({super.key});
  List<CallModel> call_list = [
    CallModel(
        name: "Jone Wick",
        icon: const Icon(Icons.call_missed, color: Colors.red),
        imageURL:
            "https://www.shutterstock.com/image-photo/human-face-260nw-371192081.jpg",
        time: "9:30 pm"),
    CallModel(
        name: "Debra Hawkins",
        icon: const Icon(Icons.call_received, color: Color(0xFF04A595)),
        imageURL:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTF5bkKSg6FgDrFlVw5A4nR77-9bbmDX3WHXnakxBrlxR5UkQPYJHkpYEUFTb6ki0Ydb8I&usqp=CAU",
        time: "12:24 am"),
    CallModel(
        name: "Jorge Henry",
        icon: const Icon(Icons.call_end, color: Color(0xFF04A595)),
        imageURL:
            "https://www.shutterstock.com/image-photo/image-handsome-smiling-young-african-260nw-722913181.jpg",
        time: "10:30 pm"),
    CallModel(
        name: "Philip Fox",
        icon: const Icon(Icons.call_missed, color: Colors.red),
        imageURL:
            "https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
        time: "4:50 am"),
    CallModel(
        name: "Mahdi Islam",
        icon: const Icon(Icons.call_merge, color: Color(0xFF04A595)),
        imageURL:
            "https://img.freepik.com/free-photo/indoor-shot-beautiful-happy-african-american-woman-smiling-cheerfully-keeping-her-arms-folded-relaxing-indoors-after-morning-lectures-university_273609-1270.jpg",
        time: "3:10 pm"),
    CallModel(
        name: "Jone Wick",
        icon: const Icon(Icons.call_missed, color: Colors.red),
        imageURL:
            "https://www.shutterstock.com/image-photo/human-face-260nw-371192081.jpg",
        time: "8:36 am"),
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
          child: const Icon(Icons.call),
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
                    hintStyle: TextStyle(color: Colors.white38),
                    disabledBorder: InputBorder.none,
                    contentPadding: EdgeInsets.only(left: 20),
                    hintTextDirection: TextDirection.ltr),
              ),
            ),

            // all user status
            ListView.builder(
              itemCount: call_list.length,
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
                              backgroundImage:
                                  NetworkImage(call_list[index].imageURL),
                              maxRadius: 30,
                              child: GestureDetector(
                                onTap: () async {
                                  await showDialog(
                                      context: context,
                                      builder: (_) => ImageDialog(
                                            image: call_list[index].imageURL,
                                          ));
                                },
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
                                      call_list[index].name,
                                      style: const TextStyle(fontSize: 16),
                                    ),
                                    const SizedBox(
                                      height: 6,
                                    ),
                                    Row(
                                      children: [
                                        // icon call status
                                        call_list[index].icon,
                                        const SizedBox(
                                          width: 8,
                                        ),
                                        Text(
                                          call_list[index].time,
                                          style: TextStyle(
                                            fontSize: 13,
                                            color: Colors.grey.shade600,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            // icons call & msg
                            const InkWell(
                              child: Icon(
                                Icons.call,
                                color: Color(0xFF04A595),
                              ),
                            )
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
