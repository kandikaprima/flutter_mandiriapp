import 'package:flutter/material.dart';
import 'package:flutter_mandiriapp/constans.dart';
import 'package:flutter_mandiriapp/widgets/custom_date_picker.dart';
import 'package:flutter_mandiriapp/widgets/custom_text_field.dart';

class InputKunjunganPage extends StatefulWidget {
  const InputKunjunganPage({Key? key, this.isEdit = false}) : super(key: key);

  final bool isEdit;

  @override
  State<InputKunjunganPage> createState() => _InputKunjunganPageState();
}

class _InputKunjunganPageState extends State<InputKunjunganPage> {
  String dropdownValue = 'Aksa';
  @override
  Widget build(BuildContext context) {
    final TextEditingController textEditingController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: blueMain,
        title: Text(
          widget.isEdit ? "Detail Kunjungan" : "Input Kunjungan",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            color: yellowMain,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: blueMain,
        child: widget.isEdit
            ? Icon(
                Icons.save,
                color: yellowMain,
              )
            : Text(
                "+",
                style: TextStyle(
                  fontSize: 30,
                  color: yellowMain,
                ),
              ),
        onPressed: () {
          Navigator.pushNamed(context, "input-kunjungan-page");
        },
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTextField(
                  title: "P.I.C Perusahaan",
                  hint: "",
                  controller: textEditingController,
                ),
                CustomDatePicker(
                  title: "Tanggal Kunjungan",
                  hint: "",
                  controller: textEditingController,
                ),
                DropdownButton<String>(
                  value: dropdownValue,
                  icon: const Icon(Icons.arrow_downward),
                  elevation: 16,
                  style: const TextStyle(color: Colors.deepPurple),
                  underline: Container(
                    height: 2,
                    color: Colors.deepPurpleAccent,
                  ),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValue = newValue!;
                    });
                  },
                  items: <String>['Aksa', 'Livin', 'Tabungan']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
                CustomTextField(
                  title: "Potensi Perusahaan",
                  hint: "",
                  controller: textEditingController,
                ),
                CustomTextField(
                  title: "Tujuan Kunjungan",
                  hint: "",
                  controller: textEditingController,
                ),
                CustomTextField(
                  title: "Hasil Kunjungan",
                  hint: "",
                  controller: textEditingController,
                ),
                CustomTextField(
                  title: "Profile Perusahaan",
                  hint: "",
                  controller: textEditingController,
                ),
                SizedBox(height: 10),
                Text("Foto Kunjungan"),
                widget.isEdit
                    ? Container(
                        width: double.infinity,
                        height: 120,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: Colors.black,
                          ),
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            image: AssetImage("assets/DetailFoto.png"),
                          ),
                        ),
                      )
                    : Container(
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
