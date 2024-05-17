import 'package:flutter/material.dart';

class SessionFifteenScreen extends StatefulWidget {
  const SessionFifteenScreen({super.key});

  @override
  State<SessionFifteenScreen> createState() => _SessionFifteenScreenState();
}

class _SessionFifteenScreenState extends State<SessionFifteenScreen> {
  int selectedIndex = 0;
  void onItemTap(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  List screenList = [
    const HomeScreen(),
    const SearchScreen(),
    const AddScreen(),
    const HistroyScreen(),
    const SettingScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenList[selectedIndex],



      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.green,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.home,
                color: Colors.pink,
              ),
              icon: Icon(
                Icons.home,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.search,
                color: Colors.pink,
              ),
              icon: Icon(Icons.search),
              label: "Search"),
          BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.add,
                color: Colors.pink,
              ),
              icon: Icon(Icons.add),
              label: "Add"),
          BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.history,
                color: Colors.pink,
              ),
              icon: Icon(Icons.history),
              label: "History"),
          BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.settings,
                color: Colors.pink,
              ),
              icon: Icon(Icons.settings),
              label: "Settings"),
        ],
        onTap: onItemTap,
        currentIndex: selectedIndex,
      ),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          drawer: Drawer(
            child: ListView(
              children: [
                DrawerHeader(
                  decoration: const BoxDecoration(
                    color: Colors.green
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        child: Image.asset(
                          "assets/images/shakir.jpeg",
                          width: 100,
                          height: 100,
                        ),
                      ),
                      const SizedBox(height: 24,),
                      const Text("Drawer Header",style: TextStyle(fontSize: 22,color: Colors.white),),
                    ],
                  ),
                ),
                ListTile(
                  onTap: (){
                    print("Home Screen");
                  },
                  leading: Icon(Icons.home),
                  title: Text("Home Screen"),
                ),
                ListTile(
                  leading: Icon(Icons.search),
                  title: Text("Search"),
                ),
                ListTile(
                  leading: Icon(Icons.add),
                  title: Text("Add Screen"),
                ),
                ListTile(
                  leading: Icon(Icons.history),
                  title: Text("History"),
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text("Settings"),
                ),
              ],
            ),
          ),
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.chat),
                  text: 'Chat',
                ),
                Tab(
                  icon: Icon(Icons.add),
                  text: 'Status',
                ),
                Tab(
                  icon: Icon(Icons.call),
                  text: 'Call',
                ),
                Tab(
                  icon: Icon(Icons.update),
                  text: 'Updates',
                ),
              ],
            ),
          ),
          backgroundColor: Colors.red,
          body: TabBarView(
            children: [
              Container(
                alignment: Alignment.center,
                color: Colors.white,
                child: Text("Chat"),
              ),
              Container(
                alignment: Alignment.center,
                color: Colors.green,
                child: Text("Status"),
              ),
              Container(
                alignment: Alignment.center,
                color: Colors.deepOrangeAccent,
                child: Text("Call"),
              ),
              Container(
                alignment: Alignment.center,
                color: Colors.purple,
                child: Text("Update"),
              ),
            ],
          )),
    );
  }
}

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: Center(
        child: Text(
          "Search Screen",
          style: TextStyle(fontSize: 32, color: Colors.white),
        ),
      ),
    );
  }
}

class AddScreen extends StatefulWidget {
  const AddScreen({super.key});

  @override
  State<AddScreen> createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Center(
        child: Text(
          "Add Screen",
          style: TextStyle(fontSize: 32, color: Colors.white),
        ),
      ),
    );
  }
}

class HistroyScreen extends StatefulWidget {
  const HistroyScreen({super.key});

  @override
  State<HistroyScreen> createState() => _HistroyScreenState();
}

class _HistroyScreenState extends State<HistroyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Text(
          "History Screen",
          style: TextStyle(fontSize: 32, color: Colors.white),
        ),
      ),
    );
  }
}

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent,
      body: Center(
        child: Text(
          "Setting Screen",
          style: TextStyle(fontSize: 32, color: Colors.white),
        ),
      ),
    );
  }
}
