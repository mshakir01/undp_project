import 'package:flutter/material.dart';

class SessionNine extends StatefulWidget {
  const SessionNine({super.key});

  @override
  State<SessionNine> createState() => _SessionNineState();
}

class _SessionNineState extends State<SessionNine> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListTile(
            leading: ClipRRect(
                borderRadius: BorderRadius.circular(125),
                child: Image.network(
                    fit: BoxFit.cover,
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkV8O1xxueVodw3gqQreOiLCxvej9waoxobQ&s")),
            title: const Text(
              "Horse",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            ),
            subtitle: const Text(
              "A Strong Animal ",
              style: TextStyle(fontSize: 16, color: Colors.blue),
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios_rounded,
              color: Colors.blue,
            ),
          )
        ],
      ),
    );
  }
}
