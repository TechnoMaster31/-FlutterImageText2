import 'package:flutter/material.dart';

/*
The purpose of this system is to import the flutter material design library
widgets, UI Design (google design system)

import - dart keywords to include external libraries

package:flutter/ - referes to material package that comes w/ flutter widgets

this is essential for building flutter apps w/ standard UI.

 */

void main(){
  runApp(const Myapp());
}

/*
Entry point of the flutter app

void main() - main function, starting point of any dart program.

runApp() Flutter Function that initializes the app and attaches the root widgets
(MyApp) to the screen

const Myapp() - creates an instance of the MyApp widget, marked const for
compile-time optimization (immutable configuration)

* */


class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override //indicates this method overrides StatelessWidget build
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The Secrets of Dumbledore',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );


  }
}
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ACTIVITY:1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8U31VVUFb_thPZleo5o8SjH4W0rZVPwHy-A&s',
        width: 300,
        height: 300,
        ),

        const SizedBox(height: 20),
        const Text('The Secrets of Dumbledore', style: TextStyle(fontSize: 20),),
        const Text(
          'Professor Albus Dumbledore knows the powerful, dark wizard Gellert Grindelwald'
              ' is moving to seize control of the wizarding world. Unable to stop him alone, '
              'he entrusts magizoologist Newt Scamander to lead an intrepid team of wizards and witches. '
              'They soon encounter an array of old and new beasts as they clash with Grindelwalds'
              ' growing legion of followers.',
            style: TextStyle(fontSize: 14),
      )

          ],
        ),
      ),
    );
  }
}
/*
defined as the root widget (main container) of the app

class Myapp extends StatelessWidget - Myapp is a custom class

StatelessWidget - base class for widgets that to no hold mutable state

const Myapp({super.key}); - constructor super.key passes an optional key to the base class

key uniquely identify widgets tree


const - ensures immutable constructor

MaterialApp
-sets up app structure: navigation,themes,home screen
-title - visible in the task switcher
-theme - ThemeData(PrimarySwatch: Color.blue) sets primary color palette
-home: const MyHomePage() sets an initial screen

* */
