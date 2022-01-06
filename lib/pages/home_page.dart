import 'package:flutter/material.dart';
import 'package:timmy_web_flutter/configs/colors_config.dart';
import 'package:timmy_web_flutter/configs/text_styles_config.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> forcas = [];
  List<String> fraquezas = [];
  List<String> oportunidades = [];
  List<String> ameacas = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: ColorsConfig.white,
        title: Image.asset(
          "assets/logo.png",
          scale: 5.0,
        ),
        actions: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Text(
                "Agora você tem mais do que duas mãos para dar conta de tanta coisa",
                style: TextStylesConfig.mainBoldBlack,
              ),
            ),
          )
        ],
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 21.0),
                      child: Container(
                        height: 140.0,
                        width: 140.0,
                        color: ColorsConfig.primaryWithOpacity,
                        child: Center(
                          child: Image.asset(
                            "assets/icon.png",
                            scale: 4.0,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Container(
                        height: 140.0,
                        width: 859.0,
                        color: ColorsConfig.primary,
                        child: Center(
                          child: Text(
                            "Fatores positivos",
                            style: TextStylesConfig.mainBoldWhite,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 21.0),
                      child: Container(
                        height: 140.0,
                        width: 859.0,
                        color: ColorsConfig.primary,
                        child: Center(
                          child: Text(
                            "Fatores negativos",
                            style: TextStylesConfig.mainBoldWhite,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 21.0),
                      child: Container(
                        height: 389.0,
                        width: 140.0,
                        color: ColorsConfig.primary,
                        child: Center(
                          child: RotatedBox(
                            quarterTurns: -1,
                            child: Text(
                              "Fatores internos",
                              style: TextStylesConfig.mainBoldWhite,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Container(
                        height: 389.0,
                        width: 859.0,
                        color: ColorsConfig.canvasGreen,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Expanded(
                            child: Scaffold(
                              appBar: AppBar(
                                backgroundColor: ColorsConfig.primary,
                                title: Text("Forças"),
                              ),
                              body: Padding(
                                padding: const EdgeInsets.only(top: 5.0),
                                child: SizedBox(
                                  height: double.infinity,
                                  width: double.infinity,
                                  child: ListView.builder(
                                    scrollDirection: Axis.vertical,
                                    itemCount: forcas.length,
                                    itemBuilder: (BuildContext ctx, int index) {
                                      return Padding(
                                        padding: const EdgeInsets.symmetric(
                                          vertical: 5.0,
                                        ),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(
                                                10.0,
                                              ),
                                            ),
                                          ),
                                          child: ListTile(
                                            leading:
                                                Icon(Icons.attach_file_rounded),
                                            title: Text(
                                              forcas[index],
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                              backgroundColor: Colors.transparent,
                              floatingActionButton: FloatingActionButton(
                                backgroundColor: ColorsConfig.primary,
                                onPressed: () {
                                  showDialog(
                                    context: context,
                                    builder: (ctx) => AlertDialog(
                                      content: TextFormField(
                                        validator: (value) {
                                          if (value!.isEmpty)
                                            return "O campo é obrigatório";
                                          return null;
                                        },
                                        decoration: InputDecoration(
                                          filled: true,
                                          prefixIcon: Icon(
                                            Icons.attach_file_rounded,
                                            color: ColorsConfig.white,
                                          ),
                                          enabledBorder: UnderlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            borderSide: BorderSide.none,
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            borderSide: BorderSide(
                                              color: Colors.transparent,
                                            ),
                                          ),
                                          fillColor: ColorsConfig.primary,
                                          labelText: "Adicionar",
                                          labelStyle:
                                              TextStylesConfig.mainWhite,
                                        ),
                                        style: TextStylesConfig.mainWhite,
                                        textCapitalization:
                                            TextCapitalization.none,
                                      ),
                                      actions: [
                                        TextButton(
                                          child: Text(
                                            "VOLTAR",
                                            style:
                                                TextStylesConfig.buttonModalRed,
                                          ),
                                          onPressed: () {},
                                        ),
                                        TextButton(
                                          child: Text(
                                            "CONTINUAR",
                                            style: TextStylesConfig
                                                .buttonModalGreen,
                                          ),
                                          onPressed: () {},
                                        ),
                                      ],
                                    ),
                                  );
                                },
                                child: Icon(Icons.add),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 21.0),
                      child: Container(
                        height: 389.0,
                        width: 859.0,
                        color: ColorsConfig.canvasRed,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Expanded(
                            child: Scaffold(
                              appBar: AppBar(
                                backgroundColor: ColorsConfig.primary,
                                title: Text("Fraquezas"),
                              ),
                              backgroundColor: Colors.transparent,
                              body: Padding(
                                padding: const EdgeInsets.only(top: 5.0),
                                child: SizedBox(
                                  height: double.infinity,
                                  width: double.infinity,
                                  child: ListView.builder(
                                    scrollDirection: Axis.vertical,
                                    itemCount: fraquezas.length,
                                    itemBuilder: (BuildContext ctx, int index) {
                                      return Padding(
                                        padding: const EdgeInsets.symmetric(
                                          vertical: 5.0,
                                        ),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(
                                                10.0,
                                              ),
                                            ),
                                          ),
                                          child: ListTile(
                                            leading:
                                                Icon(Icons.attach_file_rounded),
                                            title: Text(
                                              fraquezas[index],
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                              floatingActionButton: FloatingActionButton(
                                backgroundColor: ColorsConfig.primary,
                                onPressed: () {},
                                child: Icon(Icons.add),
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 21.0),
                      child: Container(
                        height: 389.0,
                        width: 140.0,
                        color: ColorsConfig.primary,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 33.0),
                          child: Center(
                            child: RotatedBox(
                              quarterTurns: -1,
                              child: Text(
                                "Fatores externos",
                                style: TextStylesConfig.mainBoldWhite,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Container(
                        height: 389.0,
                        width: 859.0,
                        color: ColorsConfig.canvasGreen,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Expanded(
                            child: Scaffold(
                              appBar: AppBar(
                                backgroundColor: ColorsConfig.primary,
                                title: Text("Oportunidades"),
                              ),
                              backgroundColor: Colors.transparent,
                              body: Padding(
                                padding: const EdgeInsets.only(top: 5.0),
                                child: SizedBox(
                                  height: double.infinity,
                                  width: double.infinity,
                                  child: ListView.builder(
                                    scrollDirection: Axis.vertical,
                                    itemCount: oportunidades.length,
                                    itemBuilder: (BuildContext ctx, int index) {
                                      return Padding(
                                        padding: const EdgeInsets.symmetric(
                                          vertical: 5.0,
                                        ),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(
                                                10.0,
                                              ),
                                            ),
                                          ),
                                          child: ListTile(
                                            leading:
                                                Icon(Icons.attach_file_rounded),
                                            title: Text(
                                              oportunidades[index],
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                              floatingActionButton: FloatingActionButton(
                                backgroundColor: ColorsConfig.primary,
                                onPressed: () {},
                                child: Icon(Icons.add),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 21.0),
                      child: Container(
                        height: 389.0,
                        width: 859.0,
                        color: ColorsConfig.canvasRed,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Expanded(
                            child: Scaffold(
                              appBar: AppBar(
                                backgroundColor: ColorsConfig.primary,
                                title: Text("Ameaças"),
                              ),
                              body: Padding(
                                padding: const EdgeInsets.only(top: 5.0),
                                child: SizedBox(
                                  height: double.infinity,
                                  width: double.infinity,
                                  child: ListView.builder(
                                    scrollDirection: Axis.vertical,
                                    itemCount: ameacas.length,
                                    itemBuilder: (BuildContext ctx, int index) {
                                      return Padding(
                                        padding: const EdgeInsets.symmetric(
                                          vertical: 5.0,
                                        ),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(
                                                10.0,
                                              ),
                                            ),
                                          ),
                                          child: ListTile(
                                            leading:
                                                Icon(Icons.attach_file_rounded),
                                            title: Text(
                                              ameacas[index],
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                              backgroundColor: Colors.transparent,
                              floatingActionButton: FloatingActionButton(
                                backgroundColor: ColorsConfig.primary,
                                onPressed: () {},
                                child: Icon(Icons.add),
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: ColorsConfig.white,
        onPressed: () {},
        child: Icon(
          Icons.navigate_next_rounded,
          color: ColorsConfig.primary,
        ),
      ),
    );
  }
}
