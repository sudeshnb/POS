import 'package:flutter/material.dart';
import 'package:pos/presentaion/screen/dashboard/dashboard.dart';

const defaultPadding = 16.0;

List<Widget> pageChild = [
  const DashBoardScreen(),
  Container(child: Center(child: Text('Billing'))),
  Container(child: Center(child: Text('Products'))),
  Container(child: Center(child: Text('Transaction'))),
  Container(child: Center(child: Text('Purchase'))),
  Container(child: Center(child: Text('Documents'))),
  Container(child: Center(child: Text('Suppliers'))),
  Container(child: Center(child: Text('Customers'))),
  Container(child: Center(child: Text('Store'))),
  Container(child: Center(child: Text('Notification'))),
  Container(child: Center(child: Text('Profile'))),
  Container(child: Center(child: Text('Settings'))),
];
