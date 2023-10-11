import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/tracking_controller.dart';

class TrackingView extends GetView<TrackingController> {
  const TrackingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TrackingView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'TrackingView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
