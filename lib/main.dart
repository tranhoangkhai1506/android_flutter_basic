import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: SafeArea(
        child: Scaffold(
      // body: Center(child: LoadingProgressBar(true),),
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text("Lab01-02 - Flutter - Kaaka"),
      ),
      body: MyWidget(),
    )),
    debugShowCheckedModeBanner: false,
  ));
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.cyan,
      child: Row(
        children: [
          Expanded(
              flex: 2,
              child: Container(
                color: Colors.pink,
                height: 150,
              )),
          Expanded(
              flex: 1,
              child: Container(
                color: Colors.blue,
                height: 150,
              )),
          Expanded(
              flex: 1,
              child: Container(
                color: Colors.yellow,
                height: 150,
              )),
        ],
        // mainAxisSize: MainAxisSize.max, // phu thuoc vao container
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        // crossAxisAlignment: CrossAxisAlignment.center,
        // children: [
        //   const Column(
        //     textDirection: TextDirection.ltr,
        //     mainAxisSize: MainAxisSize.min,
        //     children: [
        //       Text(
        //         'Today',
        //         style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        //       ),
        //       Text('04/07/2023')
        //     ],
        //   ),
        //   ElevatedButton(
        //       onPressed: () {},
        //       style: TextButton.styleFrom(
        //           foregroundColor: Colors.white,
        //           backgroundColor: const Color.fromARGB(255, 40, 121, 235),
        //           shape: RoundedRectangleBorder(
        //               borderRadius: BorderRadius.circular(20)),
        //           elevation: 20,
        //           shadowColor:
        //               const Color.fromARGB(255, 34, 31, 34).withOpacity(0.2)),
        //       child: const Text('Add'))
        // ],
      ),
    );

    // return RichText(
    //     text: TextSpan(
    //         style: DefaultTextStyle.of(context).style,
    //         children: const <TextSpan>[
    //       TextSpan(text: 'Hello, ', style: TextStyle(fontSize: 20)),
    //       TextSpan(text: 'My name is KaaKa', style: TextStyle(fontSize: 25))
    //     ]));
    // return const Card(
    //   color: Colors.deepOrangeAccent,
    //   child: Padding(
    //     padding: EdgeInsets.all(25.0),
    //     child: Text('Hello, I`m Kaaka', style: TextStyle(fontSize: 25)),
    //   ),
    // );
    //TEXT BUTTON
    // ignore: avoid_unnecessary_containers
    //   return Container(
    //     child: TextButton.icon(
    //         onPressed: () {
    //           print('add successful!');
    //         },
    //         style: TextButton.styleFrom(
    //             foregroundColor: Colors.white,
    //             backgroundColor: const Color.fromARGB(255, 0, 5, 12),
    //             shape: RoundedRectangleBorder(
    //                 borderRadius: BorderRadius.circular(20)),
    //             elevation: 20,
    //             shadowColor: Colors.black.withOpacity(0.5)),
    //         icon: const Icon(Icons.add_photo_alternate, size: 20),
    //         label: const Text(
    //           'Add Picture',
    //           style: TextStyle(fontSize: 20),
    //         )),
    //   );
    //   return Container(
    //     margin: const EdgeInsets.fromLTRB(30, 20, 30, 20),
    //     width: 400,
    //     height: 200,
    //     alignment: Alignment.center,
    //     color: const Color.fromARGB(255, 156, 168, 234),
    //     // decoration: const BoxDecoration(
    //     //   shape: BoxShape.rectangle,

    //     // ),
    //     child: SizedBox(
    //       width: 150,
    //       height: 50,
    //       child: ElevatedButton.icon(
    //         onPressed: () {
    //           print("Done!");
    //         },
    //         style: ElevatedButton.styleFrom(
    //             backgroundColor: Colors.pink,
    //             foregroundColor: Colors.white,
    //             shape: RoundedRectangleBorder(
    //                 borderRadius: BorderRadius.circular(20)),
    //             shadowColor: Colors.yellow.withOpacity(1)),
    //         label: const Text('Android', style: TextStyle(fontSize: 20)),
    //         icon: const Icon(Icons.android, size: 20),
    //       ),
    //     ),
    //   );
  }
}

class Loadingbar extends StatefulWidget {
  final bool condition;
  const Loadingbar(this.condition);

  @override
  State<StatefulWidget> createState() {
    return LoadingbarState();
  }
}

class LoadingbarState extends State<Loadingbar> {
  late bool _state;

  @override
  void initState() {
    _state = widget.condition;
  }

  @override
  Widget build(BuildContext context) {
    return _state
        ? const CircularProgressIndicator()
        : FloatingActionButton(onPressed: onClickButton);
  }

  void onClickButton() {
    setState(() {
      _state = true;
    });
  }
}
