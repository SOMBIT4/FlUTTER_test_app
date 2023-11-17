import "package:flutter/material.dart";
import "package:flutter_application_1/components/my_listtile.dart";

class Mydrawer extends StatelessWidget {
  const Mydrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              // logo
              DrawerHeader(
                child: Center(
                  child: Icon(
                    Icons.car_crash,
                    size: 72,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
              ),
              const SizedBox(height: 35),
              Mylisttile(
                text: "Fuel repair system",
                icon: Icons.oil_barrel_outlined,
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/fuel_page');
                },
                textStyle: const TextStyle(
                  fontSize:
                      18, // Adjust the font size according to your preference
                ),
              ),
              Mylisttile(
                text: "Electro diagnostics",
                icon: Icons.electric_bike,
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/electro_page');
                },
                textStyle: const TextStyle(
                  fontSize:
                      18, // Adjust the font size according to your preference
                ),
              ),
              Mylisttile(
                text: "System repair and fix",
                icon: Icons.warehouse_outlined,
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/system_page');
                },
                textStyle: const TextStyle(
                  fontSize:
                      18, // Adjust the font size according to your preference
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 25.0),
            child: Mylisttile(
              text: "Exit",
              icon: Icons.exit_to_app,
              onTap: () => Navigator.pushNamedAndRemoveUntil(
                  context, '/intro_page', (route) => false),
              textStyle: const TextStyle(
                fontSize:
                    18, // Adjust the font size according to your preference
              ),
            ),
          )
        ],
      ),
    );
  }
}
