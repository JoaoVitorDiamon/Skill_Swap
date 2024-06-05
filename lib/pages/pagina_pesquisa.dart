import 'package:flutter/material.dart';


class Pesquisa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Pesquisa2(),
              SizedBox(height: 20),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color:
                        Colors.green, 
                  ),
                  child: HistoricoDePesquisaWidget(),
                ),
              ),
              SizedBox(height: 20),
              IconBar(),
            ],
          ),
        ),
      ),
    );
  }
}

class Pesquisa2 extends StatefulWidget {
  @override
  _WidgetDePesquisaState createState() => _WidgetDePesquisaState();
}

class _WidgetDePesquisaState extends State<Pesquisa2> {
  TextEditingController _controller = TextEditingController();

  void _submitSearch(String value) {
    if (value.isNotEmpty) {
      setState(() {
        HistoricoDePesquisa.adicionarAoHistorico(value);
      });
      _controller.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Color.fromARGB(255, 78, 126, 126),
      ),
      child: Row(
        children: [
          Icon(Icons.search, color: Colors.white),
          SizedBox(width: 10),
          Expanded(
            child: TextField(
              controller: _controller,
              onSubmitted: _submitSearch,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: 'Pesquisar...',
                hintStyle: TextStyle(color: Colors.white54),
                border: InputBorder.none,
              ),
            ),
          ),
          Icon(Icons.mic, color: Colors.white),
        ],
      ),
    );
  }
}

class HistoricoDePesquisa {
  static List<String> historicoDePesquisa = [
    'Flutter',
    'Dart',
    'Desenvolvimento Mobile'
  ];

  static void adicionarAoHistorico(String consulta) {
    historicoDePesquisa.insert(0, consulta);
  }
}

class HistoricoDePesquisaWidget extends StatefulWidget {
  @override
  _HistoricoDePesquisaState createState() => _HistoricoDePesquisaState();
}

class _HistoricoDePesquisaState extends State<HistoricoDePesquisaWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 44, 70, 70),
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListView.builder(
        itemCount: HistoricoDePesquisa.historicoDePesquisa.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Row(
              children: [
                Icon(Icons.history, color: Colors.white), 
                SizedBox(width: 10),
                Expanded(
                  child: Text(
                    HistoricoDePesquisa.historicoDePesquisa[index],
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      HistoricoDePesquisa.historicoDePesquisa.removeAt(index);
                    });
                  },
                  child: Icon(Icons.delete,
                      color: Colors.white),
                ),
              ],
            ),
            onTap: () {},
          );
        },
      ),
    );
  }
}

class IconBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      padding: EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(
            Icons.work,
            color: Colors.white,
            size: 30,
          ),
          Icon(
            Icons.search,
            color: Colors.white,
            size: 30,
          ),
          Icon(
            Icons.notifications,
            color: Colors.white,
            size: 30,
          ),
          Icon(
            Icons.person,
            color: Colors.white,
            size: 30,
          ),
        ],
      ),
    );
  }
}
