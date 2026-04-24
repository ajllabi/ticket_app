import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/widgets/app_layoutbuilder_widget.dart';
import 'package:ticket_app/base/widgets/big_dot.dart';
import 'package:ticket_app/base/widgets/big_circle.dart';
import 'package:ticket_app/base/widgets/text_style_third.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width * 0.85,
      height: 189,
      child: Container(
        margin: EdgeInsets.only(right: 16),
        child: Column(
          children: [
            // Blue part of the ticket
            Container(
              padding: EdgeInsets.all(16),
              // ignore: sort_child_properties_last
              child: Column(
                children: [
                  //show departure and destination with icons first line
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TexyStyleThird(text: "NYC"),
                      Expanded(child: Container()),
                      const BigDot(),
                      Expanded(
                        child: Stack(
                          children: [
                            const SizedBox(
                              height: 24,
                              child: AppLayoutBuilderWidget(randomDivider: 6),
                            ),
                            Center(
                              child: Transform.rotate(
                                angle: 1.57,
                                child: Icon(
                                  Icons.local_airport_rounded,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const BigDot(),
                      Expanded(child: Container()),
                      Text(
                        "LDN",
                        style: AppStyles.headLineStyle3.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 3),
                  //show departure and destination with time
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 100,
                        child: Text(
                          "New-York",
                          style: AppStyles.headLineStyle4.copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Expanded(child: Container()),
                      Text(
                        "8H 30M",
                        style: AppStyles.headLineStyle4.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      Expanded(child: Container()),
                      SizedBox(
                        width: 100,
                        child: Text(
                          "London",
                          textAlign: TextAlign.end,
                          style: AppStyles.headLineStyle4.copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: AppStyles.ticketBlue,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(21),
                  topRight: Radius.circular(21),
                ),
              ),
            ),
            // Circles and dots
            Container(
              height: 20,
              color: AppStyles.ticketOrange,
              child: Row(
                children: [
                  BigCircle(isRight: false),
                  Expanded(
                    child: AppLayoutBuilderWidget(randomDivider: 16, width: 6),
                  ),
                  BigCircle(isRight: true),
                ],
              ),
            ),
            // Orange part of the ticket
            Container(
              padding: EdgeInsets.all(16),
              // ignore: sort_child_properties_last
              child: Column(
                children: [
                  //show departure and destination with icons first line
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "1 May",
                        style: AppStyles.headLineStyle3.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      Expanded(child: Container()),
                      Text(
                        "08:00 AM",
                        style: AppStyles.headLineStyle3.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      Expanded(child: Container()),
                      Text(
                        "23",
                        style: AppStyles.headLineStyle3.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 3),
                  //show departure and destination with time
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Date",
                        style: AppStyles.headLineStyle3.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      Expanded(child: Container()),
                      Text(
                        "Departure Time",
                        style: AppStyles.headLineStyle3.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      Expanded(child: Container()),
                      Text(
                        "Number",
                        style: AppStyles.headLineStyle3.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: AppStyles.ticketOrange,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(21),
                  bottomRight: Radius.circular(21),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
