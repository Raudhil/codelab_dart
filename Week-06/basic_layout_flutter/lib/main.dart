import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget _buildCard() {
    return SizedBox(
      height: 210,
      child: Card(
        child: Column(
          children: [
            ListTile(
              title: const Text(
                '1625 Main Street',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              subtitle: const Text('My City, CA 99984'),
              leading: Icon(Icons.restaurant_menu, color: Colors.blue[500]),
            ),
            const Divider(),
            ListTile(
              title: const Text(
                '(408) 555-1212',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              leading: Icon(Icons.contact_phone, color: Colors.blue[500]),
            ),
            ListTile(
              title: const Text('costa@example.com'),
              leading: Icon(Icons.contact_mail, color: Colors.blue[500]),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStack() {
    return Stack(
      alignment: const Alignment(0.6, 0.6),
      children: [
        const CircleAvatar(
          backgroundImage: AssetImage('../assets/img/pp.png'),
          radius: 100,
        ),
        Container(
          decoration: const BoxDecoration(color: Colors.black45),
          child: const Text(
            'Mia B',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildGrid() => GridView.extent(
      maxCrossAxisExtent: 150,
      padding: const EdgeInsets.all(4),
      mainAxisSpacing: 4,
      crossAxisSpacing: 4,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: _buildGridTileList(10));

  List<Widget> _buildGridTileList(int count) => List.generate(
      count,
      (i) => Card(
            clipBehavior: Clip.antiAlias,
            child: Image.asset(
              '../assets/img/image4.jpeg',
              fit: BoxFit.cover,
            ),
          ));

  ListTile _tile(String title, String subtitle, IconData icon) {
    return ListTile(
      title: Text(title,
          style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 20)),
      subtitle: Text(subtitle),
      leading: Icon(icon, color: Colors.blue[500]),
    );
  }

  Widget _buildList() {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        _tile('CineArts at the Empire', '85 W Portal Ave', Icons.theaters),
        _tile('The Castro Theater', '429 Castro St', Icons.theaters),
        _tile('Alamo Drafthouse Cinema', '2550 Mission St', Icons.theaters),
        const Divider(),
        _tile('K\'s Kitchen', '757 Monterey Blvd', Icons.restaurant),
        _tile('Emmy\'s Restaurant', '1923 Ocean Ave', Icons.restaurant),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter UI Collection'),
        ),
        body: ListView(
          padding: const EdgeInsets.all(8.0),
          children: [
            _buildCard(),
            const SizedBox(height: 20),
            _buildStack(),
            const Divider(height: 40, thickness: 2),
            _buildList(),
            const Divider(height: 40, thickness: 2),
            _buildGrid(),
          ],
        ),
      ),
    );
  }
}