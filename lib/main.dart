import 'package:bmi/SecondPage.dart';
import 'package:flutter/material.dart';
import 'SecondPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI ',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo.shade800),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'BMI CalC'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var wtController = TextEditingController();
  var ftController = TextEditingController();
  var inController = TextEditingController();
  var result = "";
  var bgColor;

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
       body: Container(
         color: bgColor, // Color for the entire screen
         width: double.infinity, // Ensure the container covers the full width
         height: double.infinity, // Ensure the container covers the full height
         child: Center(
           child: Container(
             width: 300, // Width for the form container
             child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('BMI', style: TextStyle(
                  fontSize: 34, fontWeight: FontWeight.w700,
                ),),


                SizedBox(height: 30,),

                TextField(
                  controller: wtController,
                  decoration: InputDecoration(
                    label: Text('Enter you wt in kg'),
                    prefixIcon: Icon(Icons.line_weight),
                  ),
                  keyboardType: TextInputType.number,
                ),

                SizedBox(height: 11,),


                TextField(
                  controller: ftController,
                  decoration: InputDecoration(
                    label: Text('Enter you ht in feet'),
                    prefixIcon: Icon(Icons.ac_unit),
                  ),
                  keyboardType: TextInputType.number,
                ),


                SizedBox(height: 11,),

                TextField(
                  controller: inController,
                  decoration: InputDecoration(
                    label: Text('Enter you height in inch'),
                    prefixIcon: Icon(Icons.line_weight),
                  ),
                  keyboardType: TextInputType.number,
                ),

                SizedBox(height: 22,),

                ElevatedButton(onPressed: (){
                  var wt = wtController.text.toString();
                  var ft = ftController.text.toString();
                  var inc = inController.text.toString();

                  if (wt != "" && ft != "" && inc != "") {
                    var iwt = int.parse(wt);
                    var ift = int.parse(ft);
                    var iinc = int.parse(inc);

                    // Convert height to total inches
                    var tinch = (ift * 12) + iinc;

                    // Convert height from inches to meters
                    var tmeters = tinch * 0.0254;

                    // Calculate BMI
                    var bmi = iwt / (tmeters * tmeters);

                    Color newColor;
                    if (bmi > 24.9) {
                      // Overweight
                      newColor = Colors.red.shade200;
                    } else if (bmi < 18.5) {
                      // Underweight
                      newColor = Colors.blue.shade200;
                    } else {
                      // Normal weight
                      newColor = Colors.green.shade200;
                    }

                    setState(() {
                      result = "Your BMI is ${bmi.toStringAsFixed(2)}";
                      bgColor = newColor;
                    });
                  }else{
                    setState(() {
                      result="Please Fill all the require fields";
                    });
                  }
                },
                    child: Text("Calculate"))
                ,
                SizedBox(height: 100,),
                Text(result, style: TextStyle(fontSize: 20),),
                SizedBox(height: 100,),
                ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return SecondPage();
                  },));
                }, child: const Text("Next"))
              ],
            ),
          ),
        ),

      )
   );
  }
}
