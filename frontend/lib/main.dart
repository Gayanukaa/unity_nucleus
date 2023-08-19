import 'package:flutter/material.dart';
import 'package:nucleus/Pages/booking_verification_model.dart';
import 'package:nucleus/Pages/payment_settings-page.dart';
import 'package:nucleus/Pages/profile_preview_page.dart';
import 'Pages/destination_page_model.dart';
import 'Pages/profile_settings_page.dart';

void main() {
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Nucleus Dashboard'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        // body:ProfilePreview(),
        // body: DestinationPage(),
        // body: VerificationScreen(),
        // body:ProfileSettings(),
        body: PaymentSettings(),
      ),
    );
  }

}
