import 'package:Social/models/Chat.dart';
import 'package:flutter/material.dart';
import 'ChatConstant.dart';

class ChatCard extends StatelessWidget {
  final Chat chat;
  const ChatCard({Key key, this.chat, this.press}) : super(key: key);
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: kDefaultPadding, vertical: kDefaultPadding * 0.75),
        child: Row(children: [
          Stack(children: [
            CircleAvatar(
              backgroundImage: AssetImage(chat.image),
            ),
            if (chat.isActive)
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  height: 16,
                  width: 16,
                  decoration: BoxDecoration(
                      color: online,
                      shape: BoxShape.circle,
                      border: Border.all(
                          color: Theme.of(context).scaffoldBackgroundColor,
                          width: 3)),
                ),
              )
          ]),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(chat.name,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500)),
                    SizedBox(height: 8),
                    Opacity(
                      opacity: 0.64,
                      child: Text(chat.lastMessage,
                          maxLines: 1, overflow: TextOverflow.ellipsis),
                    )
                  ]),
            ),
          ),
          Opacity(opacity: 0.64, child: Text(chat.time))
        ]),
      ),
    );
  }
}
