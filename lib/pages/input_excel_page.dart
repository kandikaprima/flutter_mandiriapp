import 'package:flutter/material.dart';
import 'package:flutter_mandiriapp/constans.dart';
import 'package:flutter_mandiriapp/widgets/custom_text_field.dart';

class InputNasabahPage extends StatelessWidget {
  const InputNasabahPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController textEditingController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: blueMain,
        title: Text(
          "Masukkan Excel",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            color: yellowMain,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: blueMain,
        child: Text(
          "+",
          style: TextStyle(
            fontSize: 30,
            color: yellowMain,
          ),
        ),
        onPressed: () {},
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTextField(
                  title: "Masukkan Excel",
                  hint: "",
                  controller: textEditingController,
                ),
                SizedBox(height: 10),
                Text("Masukkan Excel"),
                Container(
                  width: 77,
                  height: 77,
                  margin: EdgeInsets.only(top: 7),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/add_picture.png"),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
