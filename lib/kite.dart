import 'package:flutter/material.dart';

class Kite extends StatefulWidget {
  const Kite({Key? key}) : super(key: key);

  @override
  State<Kite> createState() => _KiteState();
}

class _KiteState extends State<Kite> {
  double luas = 0;
  double keliling = 0;
  final d1Controller = TextEditingController();
  final d2Controller = TextEditingController();

  void hitung() {
    double? d1 = double.tryParse(d1Controller.text);
    double? d2 = double.tryParse(d2Controller.text);

    d1 ??= 0;
    d2 ??= 0;

    if (d1 == 0 && d2 == 0) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Input Diagonal 1 dan 2 bernilai 0')),
      );
    } else if (d1 == 0) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Input Diagonal 1 bernilai 0')),
      );
    } else if (d2 == 0) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Input Diagonal 2 bernilai 0')),
      );
    }

    setState(() {
      keliling = (d1! + d2!) * 2;
      luas = d1 * d2 / 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width / 12,
            vertical: MediaQuery.of(context).size.height / 6),
        child: Column(
          children: [
            TextFormField(
              controller: d1Controller,
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                floatingLabelBehavior: FloatingLabelBehavior.always,
                label: Text.rich(
                  TextSpan(
                    children: <InlineSpan>[
                      WidgetSpan(
                          alignment: PlaceholderAlignment.baseline,
                          baseline: TextBaseline.alphabetic,
                          child: Text('Nilai Diagonal 1'))
                    ],
                  ),
                ),
              ),
            ),
            TextFormField(
              controller: d2Controller,
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                floatingLabelBehavior: FloatingLabelBehavior.always,
                label: Text.rich(
                  TextSpan(
                    children: <InlineSpan>[
                      WidgetSpan(
                          alignment: PlaceholderAlignment.baseline,
                          baseline: TextBaseline.alphabetic,
                          child: Text('Nilai Diagonal 2'))
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 6,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: hitung,
                      child: Text('Hitung Keliling dan Luas')),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0),
              child: Text(
                'Luas : ' + luas.toString(),
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0),
              child: Text(
                'Keliling : ' + keliling.toString(),
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
