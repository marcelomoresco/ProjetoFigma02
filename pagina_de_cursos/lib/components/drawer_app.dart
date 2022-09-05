import 'package:flutter/material.dart';

class DrawerApp extends StatelessWidget {
  const DrawerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CircleAvatar(
                  radius: 30,
                ),
                Column(
                  children: const [
                    Text("Marcelo Moresco"),
                    Text("marcelomoresco0@gmail.com")
                  ],
                ),
                const CircleAvatar(
                  radius: 24,
                  backgroundColor: Color.fromRGBO(30, 60, 168, 1),
                  child: Icon(Icons.add_comment_outlined, color: Colors.white),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                  hintText: "Search",
                  prefixIcon: Icon(Icons.search, color: Colors.white),
                  filled: true,
                  fillColor: Colors.white12,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(
                      color: Colors.white.withOpacity(0.7),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(
                      color: Colors.white.withOpacity(0.7),
                    ),
                  )),
            ),
            const SizedBox(
              height: 28,
            ),
            buildMenu(text: 'Profile', icon: Icons.person),
            const SizedBox(
              height: 16,
            ),
            buildMenu(text: 'Favorites', icon: Icons.favorite_sharp),
            const SizedBox(
              height: 16,
            ),
            buildMenu(text: 'Courses', icon: Icons.school),
            const SizedBox(
              height: 16,
            ),
            buildMenu(text: 'Settings', icon: Icons.settings),
            const SizedBox(
              height: 24,
            ),
            Divider(
              color: Colors.white70,
            ),
            SizedBox(
              height: 24,
            ),
            buildMenu(
                text: 'Notiffications',
                icon: Icons.notifications_active_outlined),
          ],
        ),
      ),
    );
  }

  Widget buildMenu({required String text, required IconData icon}) {
    return ListTile(
      leading: Icon(icon, color: Colors.white),
      title: Text(
        text,
        style: TextStyle(color: Colors.white),
      ),
      hoverColor: Colors.white70,
    );
  }
}
