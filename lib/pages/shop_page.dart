import "package:flutter/material.dart";
import "package:flutter_application_1/components/my_drawer.dart";

class Shoppage extends StatelessWidget {
  const Shoppage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("SERVICES")),
      drawer: const Mydrawer(),
    );
  }
}
