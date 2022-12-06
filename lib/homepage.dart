import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  String name = "sample";
  String catalogName = "Nome catalogo";
  List _tagList = [1, 2, 3];
  double topStart = 178;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: const Color(0xFFFFFFFF),
        ),
        Positioned(
            width: 23,
            height: 56,
            left: 5,
            top: -31,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: const Color(0xFFFF9B18)),
            )),
        Positioned(
            width: 23,
            height: 56,
            left: 35,
            top: -13,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: const Color(0xFFEE0F38)),
            )),
        Positioned(
            width: 400,
            height: 270,
            left: 24,
            top: 60,
            child: Container(
                child: RichText(
              text: TextSpan(
                text: 'Ciao, ',
                style: const TextStyle(
                    color: Colors.black,
                    fontStyle: FontStyle.normal,
                    fontSize: 20,
                    fontFamily: 'Inter'),
                children: <TextSpan>[
                  TextSpan(
                      text: name,
                      style: const TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
            ))),
        Positioned(
            left: 30,
            right: 30,
            top: 126,
            child: Material(
              child: Column(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 60,
                    height: 39,
                    child: TextField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(341),
                          borderSide: const BorderSide(
                              color: Color(0xEEEEEAEA), width: 0.0),
                        ),
                        filled: true,
                        fillColor: const Color(0xEEEEEAEA),
                      ),
                      style: const TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
            )),
        Positioned(
            width: 61,
            height: 24,
            left: 30,
            top: 215,
            child: Container(
                child: RichText(
              text: TextSpan(
                text: catalogName,
                style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    fontFamily: 'Inter'),
              ),
            ))),
        Container(
          padding: EdgeInsets.only(
            top: (MediaQuery.of(context).size.height / 2) - 240,
            left: 14,
            right: 14,
          ),
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: _tagList.length,
            itemBuilder: (context, index) {
              return Container(
                  padding: const EdgeInsets.only(top: 15),
                  child: Material(
                    color: Colors.white,
                    child: Column(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width - 28,
                          height: 67,
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: const Color(0xEEEEEAEA),
                                boxShadow: const [
                                  BoxShadow(
                                      color: Color.fromARGB(64, 0, 0, 0),
                                      blurRadius: 7,
                                      offset: Offset(0, 4)),
                                ]),
                            child: Stack(
                              children: [
                                Container(
                                  height: 55,
                                  width: 55,
                                  margin: const EdgeInsets.only(
                                    left: 14,
                                    top: 6,
                                  ),
                                  decoration: const BoxDecoration(
                                    color: Color(0xEEEEEAEA),
                                  ),
                                  child: const Center(
                                    child: Text("aa"),
                                  ),
                                ),
                                Container(
                                    height: 20,
                                    width: 119,
                                    margin: const EdgeInsets.only(
                                      top: 24,
                                      left: 80,
                                    ),
                                    child: RichText(
                                      text: const TextSpan(
                                        text: "Nome panino",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w700,
                                            fontStyle: FontStyle.normal,
                                            fontSize: 16,
                                            fontFamily: 'Inter'),
                                      ),
                                    )),
                                Container(
                                  height: 37,
                                  width: 57,
                                  margin: const EdgeInsets.only(
                                    top: 15,
                                    left: 302,
                                  ),
                                  child: SizedBox(
                                      height: 37,
                                      width: 57,
                                      child: DecoratedBox(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            color: const Color(0xFFEE0F38)),
                                        child: Center(
                                            child: RichText(
                                                text: const TextSpan(
                                          text: "\$1,50",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w700,
                                              fontStyle: FontStyle.normal,
                                              fontSize: 16,
                                              fontFamily: 'Inter'),
                                        ))),
                                      )),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ));
            },
          ),
        )
      ],
    );
  }
}
