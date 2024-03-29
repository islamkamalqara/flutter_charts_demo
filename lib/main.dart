import 'package:flutter/material.dart';
import 'package:flutter_chart_demo/charts/bar_chart_sample.dart';
import 'package:flutter_chart_demo/charts/line_chart_sample.dart';

import 'package:flutter_chart_demo/data/price_point.dart';
import 'package:flutter_chart_demo/data/sector.dart';

import 'package:flutter_chart_demo/line_chart_widget.dart';
import 'package:flutter_chart_demo/pie_chart_widget.dart';
import 'package:flutter_chart_demo/bar_chart_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Chart',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Chart'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 48.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

        Row(
             children: [
               Expanded(child:  BarChartWidget(points: pricePoints),),
               Expanded(child: BarChartSample()),
             ],
           ),
              SizedBox(height: MediaQuery.of(context).size.width * 0.1,),
              LineChartSample()

              //
              //
            ],
          ),
        ),
      ),
    );
  }
}

class SectorRow extends StatelessWidget {
  const SectorRow(this.sector, {Key? key}) : super(key: key);
  final Sector sector;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 16,
          child: CircleAvatar(
            backgroundColor: sector.color,
          ),
        ),
        const Spacer(),
        Text(sector.title),
      ],
    );
  }
}
