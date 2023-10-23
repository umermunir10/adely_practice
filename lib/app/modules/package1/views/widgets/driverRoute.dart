import 'package:adely_dispatcher/app/data/configs/text_styles.dart';
import 'package:flutter/material.dart';

class DriverRoute extends StatelessWidget {
  const DriverRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.only(right: 8),
        child: ExpansionTile(
            iconColor: Colors.black,
            collapsedIconColor: Colors.black,
            title: Text(
              'Driver & Route',
              style: CustomTextStyle.font16RM,
            ),
            children: [
              Container(
                height: 170,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white),
                child: const Padding(
                  padding: EdgeInsets.only(left: 15, right: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Salman Iqbal',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 30),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Phone:',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 14)),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                '+92 300 123 45 67',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 55,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Email:',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 14)),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'salman@gmail.com',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text('Route:',
                          style: TextStyle(color: Colors.grey, fontSize: 14)),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '1094241',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}
