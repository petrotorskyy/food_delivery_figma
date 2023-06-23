import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/food_delivery_app.dart';

import 'src/core/injection.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await Injection.setup();
  runApp(const FoodDeliveryApp());
}
