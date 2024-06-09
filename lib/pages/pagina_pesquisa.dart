import 'package:flutter/material.dart';
import 'package:skill_swap/componentes/color.dart';

class Pesquisa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Pesquisa1(),
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: corPrimaria,
      ),
    );
  }
}

class Pesquisa1 extends StatefulWidget {
  @override
  _Pesquisa1State createState() => _Pesquisa1State();
}

class _Pesquisa1State extends State<Pesquisa1> {
  int _currentIndex = 1;

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  color: Colors.green,
                ),
                child: HistoricoDePesquisaWidget(),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: corPrimaria,
        unselectedItemColor: const Color.fromARGB(255, 45, 173, 156),
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.work),
            label: 'Trabalho',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Pesquisar',
          ),
          BottomNavigationBarItem(
            icon: Stack(
              children: [
                Icon(Icons.notifications),
                Positioned(
                  right: 0,
                  child: Container(
                    padding: EdgeInsets.all(1),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    constraints: BoxConstraints(
                      minWidth: 12,
                      minHeight: 12,
                    ),
                    child: Text(
                      '1',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 8,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
              ],
            ),
            label: 'Notificações',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
          ),
        ],
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
                  child: Icon(Icons.delete, color: Colors.white),
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
