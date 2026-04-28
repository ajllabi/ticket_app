import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/media.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/utils/app_json.dart';
import 'package:ticket_app/base/widgets/app_coloum_text_layout.dart';
import 'package:ticket_app/base/widgets/app_layoutbuilder_widget.dart';
import 'package:ticket_app/base/widgets/ticket_view.dart';
import 'package:ticket_app/screens/search/widgets/app_ticket_tabs.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.scaffoldBGColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          const SizedBox(height: 40),
          Text("Tickets", style: AppStyles.headLineStyle1),
          const SizedBox(height: 12),
          const AppTicketTabs(firstTab: "Upcoming", seconfTab: "Previous"),
          const SizedBox(height: 20),
          //white and black ticket
          Container(
            padding: const EdgeInsets.only(left: 16),
            child: TicketView(ticket: ticketList[0], isColor: false),
          ),
          const SizedBox(height: 1),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            color: AppStyles.ticketColor,
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnTextLayout(
                      topText: "Flutter DB",
                      bottomText: "Passenger",
                      alignment: CrossAxisAlignment.start,
                      isColor: false,
                    ),
                    AppColumnTextLayout(
                      topText: "5254 64655",
                      bottomText: "Passport",
                      alignment: CrossAxisAlignment.end,
                      isColor: false,
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const AppLayoutBuilderWidget(randomDivider: 15, width: 5),
                const SizedBox(height: 20),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnTextLayout(
                      topText: "2476 874877",
                      bottomText: "Number of E-ticket",
                      alignment: CrossAxisAlignment.start,
                      isColor: false,
                    ),
                    AppColumnTextLayout(
                      topText: "B2476",
                      bottomText: "Biiking code",
                      alignment: CrossAxisAlignment.end,
                      isColor: false,
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const AppLayoutBuilderWidget(randomDivider: 15, width: 5),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Image.asset(AppMedia.visaCard, scale: 11),
                            Text(" *** 2452", style: AppStyles.headLineStyle3),
                          ],
                        ),
                        SizedBox(height: 5),
                        Text("Payment method", style: AppStyles.headLineStyle4),
                      ],
                    ),
                    AppColumnTextLayout(
                      topText: "\$249.99",
                      bottomText: "Price",
                      alignment: CrossAxisAlignment.end,
                      isColor: false,
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 1),
          //bottom of the ticket detail section
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            padding: EdgeInsets.symmetric(vertical: 20),
            decoration: BoxDecoration(
              color: AppStyles.ticketColor,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(21),
                bottomLeft: Radius.circular(21),
              ),
            ),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: BarcodeWidget(
                  height: 70,
                  data: "data",
                  barcode: Barcode.code128(),
                  drawText: false,
                  width: double.infinity,
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          // Colorful ticket
          Container(
            padding: const EdgeInsets.only(left: 16),
            child: TicketView(ticket: ticketList[0]),
          ),
        ],
      ),
    );
  }
}
