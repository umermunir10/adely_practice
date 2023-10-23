import 'package:adely_dispatcher/app/data/configs/text_styles.dart';
import 'package:flutter/material.dart';

class ConsumerDetails extends StatelessWidget {
  const ConsumerDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.only(right: 8),
        child: ExpansionTile(
            title: Text(
              'Consumer Details',
              style: CustomTextStyle.font16RM,
            ),
            iconColor: Colors.black,
            collapsedIconColor: Colors.black,
            children: [
              Container(
                height: 482,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 15, bottom: 20),
                      child: Text(
                        'John Doe',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 30),
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('Reference person:',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12)),
                              Text(
                                'N/A',
                                style: CustomTextStyle.font14R,
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              const Text('Phone:',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12)),
                              Text(
                                '+92 300 123 45 67',
                                style: CustomTextStyle.font14R,
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              const Text('Additional info.',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12)),
                              Text(
                                'N/A',
                                style: CustomTextStyle.font14R,
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 60,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('Social Security No.',
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 12)),
                            Text(
                              'N/A',
                              style: CustomTextStyle.font14R,
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            const Text('E-mail:',
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 12)),
                            Text(
                              'johndoe@gmail.com',
                              style: CustomTextStyle.font14R,
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            const Text('C/o.',
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 12)),
                            Text(
                              'N/A',
                              style: CustomTextStyle.font14R,
                            ),
                          ],
                        )
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text('Consumer Address:',
                          style: TextStyle(color: Colors.grey, fontSize: 12)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text(
                        '1R Building, Mini Market, Gullberg II, Lahore.',
                        // '1R Building, Mini Market, Gullberg II, Lahore.',
                        style: CustomTextStyle.font14R,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('Door code:',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12)),
                              Text(
                                'N/A',
                                style: CustomTextStyle.font14R,
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              const Text('Post code:',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12)),
                              Text(
                                '54000',
                                style: CustomTextStyle.font14R,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 125,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('Floor',
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 12)),
                            Text(
                              'Ground Floor',
                              style: CustomTextStyle.font14R,
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            const Text('Country:',
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 12)),
                            Text(
                              'Pakistan',
                              style: CustomTextStyle.font14R,
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(8),
                            bottomRight: Radius.circular(8)),
                        child: Container(
                          height: 150,
                          width: double.infinity,
                          decoration: const BoxDecoration(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ]),
      ),
    );
  }
}
