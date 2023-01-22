import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';


class qrGenerator extends StatefulWidget {
  const qrGenerator({super.key});

  @override
  State<qrGenerator> createState() => _qrGeneratorState();
}

class _qrGeneratorState extends State<qrGenerator> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text('QR Generator')),
      body:SingleChildScrollView(child: Column(
        children: [
          QrImage(data:controller.text, 
          size:300,
          ),
          Container(
            margin:EdgeInsets.all(20),
            child:TextField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            )
          ),
          ElevatedButton(onPressed: (){
            setState(() {});
          }, child:Text('Generate QR'))
        ],
      ),)
    );
  }
}