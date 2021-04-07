import 'package:app_nation/logic/controller/reddit_controller.dart';
import 'package:app_nation/view/widgets/post_card.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get/instance_manager.dart';

class RedditView extends StatelessWidget {
  final RedditController xController = Get.put(RedditController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Reddit',
          ),
          centerTitle: true,
          backgroundColor: Color(0xff000000),
          elevation: 0,
        ),
        body: Obx(() {
          if (xController.isLoading.value)
            return Center(child: CircularProgressIndicator());
          else
            return SingleChildScrollView(
              child: Container(
                height: 2000,
                width: 1000,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                ),
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 210,
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.white.withOpacity(0.7)),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      for (var item in xController.dataX.data.children)
                        PostCard(
                          title: item.data.title,
                          thumbnail: item.data.thumbnail,
                          // desc: item.data.allAwardings[0].description,
                        ),
                      SizedBox(
                        height: 50,
                      )
                    ],
                  ),
                ),
              ),
            );
        }));
  }
}
