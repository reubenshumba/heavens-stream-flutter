import 'package:flutter/material.dart';
import 'package:state_manament_app/app/models/heaven.dart';
import 'package:state_manament_app/app/screens/auth/login_screen.dart';

import 'app/core/utils/custom_material_color_generator.dart';
import 'app/services/HeavensService.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Heavens',
      themeMode: ThemeMode.light ,
      darkTheme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: CustomMaterialColorGenerator.generateMaterialColor(
              const Color(0xFF010101),
            ),
            backgroundColor: const Color(0xFF010101),
            brightness: Brightness.dark,
            accentColor: const Color(0xFFE57B1D),
            cardColor: const Color(0xFFFBD461),
            primaryColorDark: const Color(0xFFFFFFFF),
          ),
          useMaterial3: true,

          textTheme: TextTheme()
      ),

      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: CustomMaterialColorGenerator.generateMaterialColor(
            const Color(0xFF50350a),
          ),
          backgroundColor: const Color(0xFFF3EFEE),
          brightness: Brightness.light,
          accentColor: const Color(0xFFE57B1D),
          cardColor: const Color(0xFFFBD461),
          primaryColorDark: const Color(0xFF010101),
        ),
        useMaterial3: true,

        textTheme: TextTheme()
      ),
      home: const LoginScreen(),
    );
  }
}


//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//
//   final String title;
//
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//
//   late HeavensService _heavenService;
//   List<Heaven> _heavens = [];
//
//   @override
//   void initState() {
//     super.initState();
//     _heavenService = HeavensService();
//     _loadHeavens();
//   }
//
//   Future<void> _loadHeavens() async {
//     try {
//       final apiResponse = await _heavenService.fetchHeavens();
//       if(apiResponse.success){
//         setState(() {
//           _heavens =  _heavenService.getHeaven( apiResponse.data.content);
//         });
//       }
//
//
//     } catch (e) {
//       debugPrint("Error loading heavens: $e");
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               _heavens.isEmpty ? "Hello - " : _heavens[0].heavenName,
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//
//           ],
//         ),
//       ),
//     );
//   }
// }
