import 'package:flutter/material.dart';
import 'package:skill_swap/componentes/color.dart';

class Notificacao extends StatelessWidget {
  const Notificacao({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Notificacao1(),
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: corPrimaria,
      ),
    );
  }
}

class Notificacao1 extends StatefulWidget {
  const Notificacao1({super.key});

  @override
  State<Notificacao1> createState() => _Notificacao1State();
}

class _Notificacao1State extends State<Notificacao1> {
  int _currentIndex = 2;

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Notificações',
          style: TextStyle(
            color: corPrimaria,
          ),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Container(
        color: Colors.black,
        child: const NotificationsList(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: corPrimaria,
        unselectedItemColor: const Color.fromARGB(255, 45, 173, 156),
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.work),
            label: 'Trabalho',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Pesquisar',
          ),
          BottomNavigationBarItem(
            icon: Stack(
              children: [
                const Icon(Icons.notifications),
                Positioned(
                  right: 0,
                  child: Container(
                    padding: const EdgeInsets.all(1),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    constraints: const BoxConstraints(
                      minWidth: 12,
                      minHeight: 12,
                    ),
                    child: const Text(
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
          const BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
          ),
        ],
      ),
    );
  }
}

class NotificationsList extends StatefulWidget {
  const NotificationsList({super.key});

  @override
  _NotificationsListState createState() => _NotificationsListState();
}

class _NotificationsListState extends State<NotificationsList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10, // Número de notificações para exibir
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 71, 97, 96),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Text(
            'Notificação ${index + 1}',
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        );
      },
    );
  }
}
