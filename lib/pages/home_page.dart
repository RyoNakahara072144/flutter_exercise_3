import 'package:flutter/material.dart';
import 'package:flutter_exercise_3/constants/text_styles.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  //変数の頭の_は、この変数がこのクラスの内部でしか使えないということを意味する。
  int _counter = 0;
  bool _isToggleOn = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: TextButton(

          //条件式?値1:値2で、if(条件式){return 値1;}else{return 値2;}と同じ意味。
          child: Icon(_isToggleOn?Icons.toggle_on_outlined:Icons.toggle_off_outlined, color: Colors.white, size: 40,),
          onPressed: (){},
        ),
        title: const Text('タイトル', style: AppTextStyles.title,),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: (){
                  },
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(20),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))
                  ),
                  child: const Icon(Icons.remove),
                ),
                const SizedBox(width: 20,),
                ElevatedButton(
                  onPressed: (){},
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(20),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))
                  ),
                  child: const Icon(Icons.add),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}