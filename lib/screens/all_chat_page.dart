import 'package:flutter/material.dart';
import 'package:stackchat/colors/colors.dart';
import 'package:stackchat/models/chat_model.dart';

import 'package:stackchat/widgets/each_chat.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatUsers> chatUsers = [
    ChatUsers(
        name: "Jane Russel",
        messageText: "Awesome Setup",
        imageURL:
            "https://img.freepik.com/free-photo/indoor-shot-beautiful-happy-african-american-woman-smiling-cheerfully-keeping-her-arms-folded-relaxing-indoors-after-morning-lectures-university_273609-1270.jpg",
        time: "Now"),
    ChatUsers(
        name: "Glady's Murphy",
        messageText: "That's Great",
        imageURL:
            "https://t4.ftcdn.net/jpg/02/32/98/33/360_F_232983351_z5CAl79bHkm6eMPSoG7FggQfsJLxiZjY.jpg",
        time: "Yesterday"),
    ChatUsers(
        name: "Jorge Henry",
        messageText: "Hey where are you?",
        imageURL:
            "https://www.shutterstock.com/image-photo/image-handsome-smiling-young-african-260nw-722913181.jpg",
        time: "31 Mar"),
    ChatUsers(
        name: "Philip Fox",
        messageText: "Busy! Call me in 20 mins",
        imageURL:
            "https://www.shutterstock.com/image-photo/human-face-260nw-371192081.jpg",
        time: "28 Mar"),
    ChatUsers(
        name: "Debra Hawkins",
        messageText: "Thankyou, It's awesome",
        imageURL:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTF5bkKSg6FgDrFlVw5A4nR77-9bbmDX3WHXnakxBrlxR5UkQPYJHkpYEUFTb6ki0Ydb8I&usqp=CAU",
        time: "23 Mar"),
    ChatUsers(
        name: "Jacob Pena",
        messageText: "will update you in evening",
        imageURL:
            "https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
        time: "17 Mar"),
    ChatUsers(
        name: "Andrey Jones",
        messageText: "Can you please share the file?",
        imageURL:
            "https://img.freepik.com/free-photo/young-bearded-man-with-striped-shirt_273609-5677.jpg?size=626&ext=jpg&ga=GA1.1.1258938661.1706443155&semt=sph",
        time: "24 Feb"),
    ChatUsers(
        name: "John Wick",
        messageText: "How are you?",
        imageURL:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3FJktH58xEk43bCzAq7qvoc_RyTvT3R4tu2d6qK5tFfejnxltSf11VN6SWo9MMabFqjk&usqp=CAU",
        time: "18 Feb"),
    ChatUsers(
        name: "Glady's Murphy",
        messageText: "That's Great",
        imageURL:
            "https://t4.ftcdn.net/jpg/02/32/98/33/360_F_232983351_z5CAl79bHkm6eMPSoG7FggQfsJLxiZjY.jpg",
        time: "Yesterday"),
    ChatUsers(
        name: "Jorge Henry",
        messageText: "Hey where are you?",
        imageURL:
            "https://www.shutterstock.com/image-photo/image-handsome-smiling-young-african-260nw-722913181.jpg",
        time: "31 Mar"),
    ChatUsers(
        name: "Philip Fox",
        messageText: "Busy! Call me in 20 mins",
        imageURL:
            "https://www.shutterstock.com/image-photo/human-face-260nw-371192081.jpg",
        time: "28 Mar"),
    ChatUsers(
        name: "Debra Hawkins",
        messageText: "Thankyou, It's awesome",
        imageURL:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTF5bkKSg6FgDrFlVw5A4nR77-9bbmDX3WHXnakxBrlxR5UkQPYJHkpYEUFTb6ki0Ydb8I&usqp=CAU",
        time: "23 Mar"),
    ChatUsers(
        name: "Jacob Pena",
        messageText: "will update you in evening",
        imageURL:
            "https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
        time: "17 Mar"),
    ChatUsers(
        name: "Andrey Jones",
        messageText: "Can you please share the file?",
        imageURL:
            "https://img.freepik.com/free-photo/young-bearded-man-with-striped-shirt_273609-5677.jpg?size=626&ext=jpg&ga=GA1.1.1258938661.1706443155&semt=sph",
        time: "24 Feb"),
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
            child: const Icon(Icons.message),
          ),
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              // search bar if needed

              // each chat row
              ListView.builder(
                itemCount: chatUsers.length,
                shrinkWrap: true,
                padding: const EdgeInsets.only(top: 16),
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return ConversationList(
                    name: chatUsers[index].name,
                    messageText: chatUsers[index].messageText,
                    imageUrl: chatUsers[index].imageURL,
                    time: chatUsers[index].time,
                    isMessageRead: (index == 0 || index == 3) ? true : false,
                  );
                },
              )
            ],
          ),
        ));
  }
}
