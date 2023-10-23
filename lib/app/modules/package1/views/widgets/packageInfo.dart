import 'package:adely_dispatcher/app/data/configs/text_styles.dart';
import 'package:flutter/material.dart';

class PackageInformation extends StatelessWidget {
  const PackageInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.only(right: 8),
        child: ExpansionTile(
            collapsedIconColor: Colors.black,
            iconColor: Colors.black,
            title: Text(
              'Package information',
              style: CustomTextStyle.font16RM,
            ),
            children: [
              Container(
                height: 260,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('Type:',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12)),
                              Text(
                                'Delivery parcel',
                                style: CustomTextStyle.font14R,
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              const Text('Tracking ID:',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12)),
                              Text(
                                '1703620657009',
                                style: CustomTextStyle.font14R,
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              const Text('Created date & time:',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12)),
                              Text(
                                '30-01-2023 07:50 PM',
                                style: CustomTextStyle.font14R,
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              const Text('Weight:',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12)),
                              Text(
                                '6.544 kg',
                                style: CustomTextStyle.font14R,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 40,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('Status:',
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 12)),
                            Text(
                              'Approved',
                              style: CustomTextStyle.font14R,
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            const Text('Batch number:',
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 12)),
                            Text(
                              'FR-CHR-0464',
                              style: CustomTextStyle.font14R,
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            const Text('Dimension:',
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 12)),
                            Text(
                              '31 x 35 41 cm',
                              style: CustomTextStyle.font14R,
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 15, right: 15),
                      child: Divider(
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text('Supplier address:',
                          style: TextStyle(color: Colors.grey, fontSize: 12)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text(
                        'Apple Store, Main Market, Gullbarg II, Lahore.',
                        style: CustomTextStyle.font14R,
                      ),
                    ),
                  ],
                ),
              ),
            ]),
      ),
    );
  }
}
