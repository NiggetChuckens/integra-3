import 'package:flutter/material.dart';
import 'package:uct_app/views/assistant.dart';
import 'package:uct_app/views/profile.dart';

class ProfilesGrid extends StatelessWidget {
  const ProfilesGrid({super.key});
  @override
  Widget build(BuildContext context){
  return Scaffold(
      appBar: AppBar(
        title: const Text('Ayudantias disponibles'),
        backgroundColor: Colors.transparent,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.blue,
                Colors.yellow
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Profile(
                      username: 'Kim Yong Un',
                      picture: 'https://i.imgur.com/BoN9kdC.png',
                    ),
                  ),
                );
              },
              child: const Assistant(
                username: 'Kim Yong Unn',
                picture: 'https://i.imgur.com/BoN9kdC.png',)
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Profile(
                      username: 'Vladimir Putin',
                      picture: 'https://i.imgur.com/BoN9kdC.png',
                    ),
                  ),
                );
              },
              child: Column(
                children: [
                  Image.network(
                    'https://i.imgur.com/BoN9kdC.png',
                    width: 140,
                    height: 140,
                  ),
                  const Text('Vladimir Putin'),
              ]),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Profile(
                      username: 'Donald Trump',
                      picture: 'https://i.imgur.com/BoN9kdC.png',
                    ),
                  ),
                );
              },
              child: Column(
                children: [
                  Image.network(
                    'https://i.imgur.com/BoN9kdC.png',
                    width: 140,
                    height: 140,
                  ),
                  const Text('Donald Trump'),
              ]),
            ),
          ),
          
        ],
      ),
    );
  }
}