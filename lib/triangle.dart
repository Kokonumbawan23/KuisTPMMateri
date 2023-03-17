import 'package:flutter/material.dart';

class Triangle extends StatefulWidget {
  const Triangle({Key? key}) : super(key: key);

  @override
  State<Triangle> createState() => _TriangleState();
}

class _TriangleState extends State<Triangle> {
  double luas = 0;
  double keliling = 0;

  final alasController = TextEditingController();
  final tinggiController = TextEditingController();
  final sm1Controller = TextEditingController();
  final sm2Controller = TextEditingController();

  void hitungLuas() {
    double? alas = double.tryParse(alasController.text);
    double? tinggi = double.tryParse(tinggiController.text);

    alas ??= 0;
    tinggi ??= 0;

    setState(() {
      if (alas == 0 && tinggi == 0) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Input alas dan tinggi bernilai 0')),
        );
      } else if (alas == 0) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Input alas bernilai 0')),
        );
      } else if (tinggi == 0) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Input tinggi bernilai 0')),
        );
      }

      luas = alas! * tinggi! / 2;
      keliling = 0;
    });
  }

  void hitungKeliling() {
    double? alas = double.tryParse(alasController.text);
    double? sm1 = double.tryParse(sm1Controller.text);
    double? sm2 = double.tryParse(sm2Controller.text);

    alas ??= 0;
    sm1 ??= 0;
    sm2 ??= 0;

    setState(() {
      if (alas == 0 && sm1 == 0 && sm2 == 0) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
              content: Text('Input alas dan sisi miring bernilai 0')),
        );
      } else if (alas == 0) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Input alas bernilai bernilai 0')),
        );
      } else if (sm1 == 0) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Input sisi miring 1 bernilai 0')),
        );
      } else if (sm2 == 0) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Input sisi miring 2 bernilai 0')),
        );
      }

      keliling = sm1! + sm2! + alas!;
      luas = 0;
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
            controller: alasController,
            decoration: const InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 10.0),
              floatingLabelBehavior: FloatingLabelBehavior.always,
              label: Text.rich(
                TextSpan(
                  children: <InlineSpan>[
                    WidgetSpan(
                        alignment: PlaceholderAlignment.baseline,
                        baseline: TextBaseline.alphabetic,
                        child: Text('Nilai alas'))
                  ],
                ),
              ),
            ),
          ),
          TextFormField(
            controller: tinggiController,
            decoration: const InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 10.0),
              floatingLabelBehavior: FloatingLabelBehavior.always,
              label: Text.rich(
                TextSpan(
                  children: <InlineSpan>[
                    WidgetSpan(child: Text('Nilai Tinggi'))
                  ],
                ),
              ),
            ),
          ),
          TextFormField(
            controller: sm1Controller,
            decoration: const InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 10.0),
              floatingLabelBehavior: FloatingLabelBehavior.always,
              label: Text.rich(
                TextSpan(
                  children: <InlineSpan>[
                    WidgetSpan(child: Text('Nilai Sisi Miring 1'))
                  ],
                ),
              ),
            ),
          ),
          TextFormField(
            controller: sm2Controller,
            decoration: const InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 10.0),
              floatingLabelBehavior: FloatingLabelBehavior.always,
              label: Text.rich(
                TextSpan(
                  children: <InlineSpan>[
                    WidgetSpan(child: Text('Nilai Sisi Miring 2'))
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
                    onPressed: hitungLuas, child: Text('Hitung Luas')),
                ElevatedButton(
                    onPressed: hitungKeliling, child: Text('Hitung Keliling')),
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
    ));
  }
}
