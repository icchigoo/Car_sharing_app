import 'package:carpooling_app/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class History extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF7E57C2),
        elevation: 0,
        title: Text("History"),
      ),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // SizedBox(height: 15),
                historyItem(),
                historyItem(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container historyItem() {
    return Container(
      padding: EdgeInsets.all(13),
      margin: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 3,
            // offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(
                text: "Id # 3523346245745",
                size: 14,
                weight: FontWeight.bold,
                color: Colors.deepPurple,
              ),
              CustomText(
                text: "24 Aug, 2021",
                size: 14,
                weight: FontWeight.bold,
                color: Colors.purple,
              ),
            ],
          ),
          Container(
            color: Colors.grey,
            height: 0.5,
            margin: EdgeInsets.symmetric(vertical: 8),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  startEndItem(Icons.trip_origin, " Banepa"),
                  SizedBox(height: 5),
                  startEndItem(Icons.location_on, "Pokhara"),
                ],
              ),
              CircleAvatar(
                radius: 35,
                backgroundImage: NetworkImage(
                    "https://imageio.forbes.com/specials-images/imageserve/5d35eacaf1176b0008974b54/2020-Chevrolet-Corvette-Stingray/0x0.jpg?format=jpg&crop=4560,2565,x790,y784,safe&width=960"),
              )
            ],
          ),
          Container(
            color: Colors.grey,
            height: 0.5,
            margin: EdgeInsets.symmetric(vertical: 8),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(text: "Pending", size: 12),
              CustomText(
                text: "Rs. 230",
                size: 15,
                weight: FontWeight.bold,
                color: Colors.red,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Row startEndItem(IconData ic, String locationName) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(ic, color: Color(0xFF7E57C2)),
        SizedBox(width: 5),
        Container(
          alignment: Alignment.topLeft,
          width: Get.width / 2,
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: CustomText(
              text: locationName,
              size: 14,
            ),
          ),
        ),
      ],
    );
  }
}
