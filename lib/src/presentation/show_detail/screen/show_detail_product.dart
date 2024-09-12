import 'package:atomi_architecture/src/presentation/show_detail/widget/chart.dart';
import 'package:flutter/material.dart';

class ShowDetailProduct extends StatefulWidget {
  const ShowDetailProduct({super.key});

  @override
  State<ShowDetailProduct> createState() => _ShowDetailProductState();
}

class _ShowDetailProductState extends State<ShowDetailProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Product"),
      ),
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          alignment: Alignment.center,
          child: ExampleChart(isShowingMainData: true),
        ),
      ),
    );
  }
}
