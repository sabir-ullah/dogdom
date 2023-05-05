import 'package:dogdom_app/view/message/video_call.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../model/chat_model.dart';
import '../../utils/app_colors.dart';
import '../../utils/app_constant.dart';
import '../../utils/my_size.dart';

// ignore: must_be_immutable
class ChattingScreen extends StatefulWidget {
  String image;
  String name;

  ChattingScreen({required this.image, required this.name, Key? key})
      : super(key: key);

  @override
  State<ChattingScreen> createState() => _ChattingScreenState();
}

class _ChattingScreenState extends State<ChattingScreen> {
  List<ChatMessage> mockMessage = [
    ChatMessage(
      message: "Without understanding people..",
      messageInput: "receiver",
      image: AppConstant.profile_img3,
    ),
    ChatMessage(
      message:
          "When a cigarette falls in love with a match,it is destined to be hurt.",
      messageInput: "sender",
      image: AppConstant.miraProfile,
    ),
    ChatMessage(
      message: "😜 😜 😜 😜",
      messageInput: "sender",
      image: AppConstant.miraProfile,
    ),
    ChatMessage(
      message:
          "You will have it if it belongs to you,whereas you don't kvetch for it if it doesn't appear in your life.🙃 🙃",
      messageInput: "receiver",
      image: AppConstant.profile_img3,
    ),
    ChatMessage(
      message: "Thank you",
      messageInput: "receiver",
      image: AppConstant.profile_img3,
    ),
  ];

  final TextEditingController _inputMessageController = TextEditingController();

  final ScrollController _scrollController =
      ScrollController(keepScrollOffset: true);

  @override
  Widget build(BuildContext context) {
    _scrollToBottom();
    MySize().init(context);
    return SafeArea(
      child: Scaffold(
          backgroundColor: AppColors.greyLight,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: MySize.scaleFactorHeight * 70,
                          width: MySize.screenWidth,
                          color: AppColors.whiteColor,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: MySize.scaleFactorHeight * 12.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        Get.back();
                                      },
                                      child: const Icon(
                                        Icons.arrow_back_ios,
                                        color: AppColors.blackColor,
                                      ),
                                    ),
                                    SizedBox(width: MySize.scaleFactorWidth * 3,),
                                    CircleAvatar(
                                        radius: MySize.scaleFactorHeight * 20,
                                        backgroundImage:
                                            AssetImage(widget.image)),
                                    SizedBox(
                                      width: MySize.scaleFactorWidth * 8,
                                    ),
                                    Text(
                                      widget.name,
                                      style: TextStyle(
                                        fontSize: MySize.size17,
                                        fontWeight: FontWeight.w500,
                                        color: AppColors.blackColor,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        Get.to(()=>const VideoCallScreen());
                                      },
                                      child: const Icon(
                                        Icons.call,
                                        color: AppColors.blackColor,
                                      ),
                                    ),
                                    SizedBox(
                                      width: MySize.scaleFactorWidth * 25,
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      child: const Icon(
                                        Icons.more_vert,
                                        color: AppColors.blackColor,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: MySize.scaleFactorHeight * 15,),
                        Align(
                          alignment: Alignment.center,
                          child: Text("1:50 pm",
                              style: TextStyle(
                                fontSize: MySize.size18,
                                fontWeight: FontWeight.w500,
                                color: AppColors.blackColor.withOpacity(0.4),
                              )),
                        ),
                        _messageSpace(),
                      ],
                    )),
              Padding(
                padding:
                    EdgeInsets.only(bottom: MySize.scaleFactorHeight * 20.0),
                child: _inputSpace(),
              ),
            ],
          )),
    );
  }

  Widget _messageSpace() {
    return Expanded(
        child: ListView.builder(
          padding: EdgeInsets.all(MySize.size5),
            controller: _scrollController,
            itemCount: mockMessage.length,
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(MySize.size8),
                    child: Align(
                      alignment: (mockMessage[index].messageInput == "receiver")
                          ? Alignment.topLeft
                          : Alignment.topRight,
                      child: Row(
                        mainAxisAlignment:
                            mockMessage[index].messageInput == "receiver"
                                ? MainAxisAlignment.start
                                : MainAxisAlignment.end,
                        children: [
                          mockMessage[index].messageInput == "receiver"
                              ? CircleAvatar(
                                  radius: MySize.scaleFactorHeight * 20,
                                  backgroundImage: mockMessage[index]
                                              .messageInput ==
                                          "receiver"
                                      ? AssetImage(widget.image)
                                      : const AssetImage(AppConstant.miraProfile),
                                )
                              : Container(),
                          SizedBox(
                            width: MySize.scaleFactorWidth * 5,
                          ),
                         Flexible(
                           child: Padding(
                             padding:  mockMessage[index].messageInput == "receiver" ? EdgeInsets.only(right: MySize.size40): EdgeInsets.only(left: MySize.size40),
                           child: Container(
                            decoration: BoxDecoration(
                              borderRadius:
                                  mockMessage[index].messageInput == "receiver"
                                      ? BorderRadius.only(
                                          topLeft: Radius.circular(
                                              MySize.scaleFactorHeight * 8),
                                          topRight: Radius.circular(
                                              MySize.scaleFactorHeight * 8),
                                          bottomRight: Radius.circular(
                                              MySize.scaleFactorHeight * 8))
                                      : BorderRadius.only(
                                          topLeft: Radius.circular(
                                              MySize.scaleFactorHeight * 8),
                                          topRight: Radius.circular(
                                              MySize.scaleFactorHeight * 8),
                                          bottomLeft: Radius.circular(
                                              MySize.scaleFactorHeight * 8)),
                              color: (mockMessage[index].messageInput ==
                                      "receiver")
                                  ? AppColors.whiteColor
                                  : AppColors.blueLight,
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(MySize.size16),
                              child: Text(
                              mockMessage[index].message,
                              style: TextStyle(
                                  fontSize: MySize.size16,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.blackColor),
                            ),
                          ),
                  ),
                         )
                         ),
                          SizedBox(
                            width: MySize.scaleFactorWidth * 5,
                          ),
                          mockMessage[index].messageInput == "receiver"
                              ? Container()
                              : CircleAvatar(
                                  radius: MySize.scaleFactorHeight * 20,
                                  backgroundImage:
                                      mockMessage[index].messageInput ==
                                              "receiver"
                                          ? AssetImage(widget.image)
                                          : const AssetImage(AppConstant.miraProfile),
                                ),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            }));
  }

  Widget _inputSpace() {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: MySize.scaleFactorHeight * 10.0),
      child: Container(
        padding: EdgeInsets.all(MySize.size7),
        width: MySize.screenWidth,
        height: MySize.scaleFactorHeight * 50,
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(MySize.scaleFactorHeight * 60),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(top: MySize.size2,left: MySize.size12,),
                child: TextField(
                  controller: _inputMessageController,
                  onSubmitted: (String str) {
                    addMessage(_inputMessageController.text);
                  },
                  decoration: InputDecoration(
                    isDense: true,
                    hintText: "The input information",
                    hintStyle:
                        TextStyle(color: AppColors.blackColor.withOpacity(0.4)),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            InkWell(
                onTap: () {
                  addMessage(_inputMessageController.text);
                },
                child: Icon(
                  Icons.add_circle_outline,
                  color: AppColors.blackColor.withOpacity(0.55),
                )),
            SizedBox(
              width: MySize.scaleFactorWidth * 10,
            ),
            Icon(
              Icons.emoji_emotions_outlined,
              color: AppColors.blackColor.withOpacity(0.55),
            ),
            SizedBox(
              width: MySize.scaleFactorWidth * 10,
            ),
            Icon(Icons.keyboard_voice_outlined,
                color: AppColors.blackColor.withOpacity(0.55)),
          ],
        ),
      ),
    );
  }

  addMessage(String input) {
    _inputMessageController.text = "";
    mockMessage.add(ChatMessage(
        message: input, messageInput: "sender", image: widget.image));
    setState(() {});
  }

  _scrollToBottom() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      if (_scrollController.hasClients) {
        _scrollController.jumpTo(_scrollController.position.maxScrollExtent);
      }
    });
  }
}
