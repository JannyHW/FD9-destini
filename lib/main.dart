import 'package:flutter/material.dart';
import 'story_brain.dart';


void main() => runApp(Destini());

//1. STATELESS
class Destini extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: StoryPage(),
    );
  }
}

//2. STATEFUL
//Create a new storyBrain object from the StoryBrain class.
StoryBrain storyBrain = StoryBrain();

class StoryPage extends StatefulWidget {
  _StoryPageState createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Destini 🔮 App"),
        centerTitle: true,
        backgroundColor: Colors.black87,
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/bg.jpeg'), 
                fit: BoxFit.cover)
                ),
        padding: EdgeInsets.all(40.0),
        constraints: BoxConstraints.expand(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              flex:6,
              child: Center(
                child: Text(storyBrain.getStory(),
                  style: TextStyle(fontSize: 20.0, color: Colors.black),
                ),
              ),
            ),
            Expanded(flex:3,
             child: Text("")),
            Expanded(
              flex: 2,
              child: FlatButton(
                onPressed: () {
                  setState(() {
                      storyBrain.nextStory(1);
                    });
                },
                color: Colors.deepOrange[200],
                child: Text(
                 storyBrain.getChoice1(),
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Expanded(
              flex: 2,
              child: Visibility(
                visible: storyBrain.isBtnVisible(),
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      storyBrain.nextStory(2);
                    });
                  },
                  color: Colors.teal[300],
                  child: Text(
                    storyBrain.getChoice2(),
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


