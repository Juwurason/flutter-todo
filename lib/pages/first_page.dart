import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("1st Page"),
      ),
      drawer: Drawer(
        backgroundColor: Colors.deepPurple[100],
        child: Column(
          children: [
            //common to place a drawer
            const DrawerHeader(child: Icon(Icons.favorite,
             size: 48,)),

            // home page list title
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("H O M E"),
              onTap: () {
                // pop drawer first
                Navigator.pop(context);

                Navigator.pushNamed(context, '/home');
              },
            ),

            //setting page list
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text("S E T T I N G S"),
                onTap: () {
                  Navigator.pushNamed(context, '/setting');
                }
            )
          ],

          

        ),
      ),
      );
  }
}
