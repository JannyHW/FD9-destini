//why?

class Story {
//1. variable declaration/properties: to store text/string of storyTitle, choice1, 2
  String storyTitle;
  String choice1;
  String choice2;

// 2. Constructor declaration/Methods:To be able to initialize the properties values
  // 2.1 SHORT VERSION
  Story({this.storyTitle, this.choice1, this.choice2});

  // 2.2 LONG VERSION
  // Story({String storyTitle, String choice1, String choice2}) {
  //   this.storyTitle = storyTitle;
  //   this.choice1 = choice1;
  //   this.choice2 = choice2;
  // }
}

