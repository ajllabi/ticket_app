import 'package:flutter/material.dart';
import 'package:ticket_app/base/utils/app_json.dart';
import 'package:ticket_app/base/widgets/ticket_view.dart';

class AllHotels extends StatelessWidget {
  const AllHotels({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("All Hotels")),
      body: ListView(
        children: [
          SingleChildScrollView(
            child: Column(
              children: hotelList
                  .map(
                    (singleHotel) => Container(
                      margin: EdgeInsets.only(bottom: 20),
                      // child: HotelView(
                      //   hotel: singleHotel,
                      //   wholeScreen: true,
                      // ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
