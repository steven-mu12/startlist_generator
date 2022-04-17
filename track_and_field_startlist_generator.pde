
// --------------------------------------------
// ------- A Track Meet Sheet Generator -------
// --------------- by Steven Mu ---------------
// --------------------------------------------

void setup(){
  size(850, 1100);
  background(255);
  exit();
  // initializing the teams
  Team lhss = new Team("LHSS", "Highlanders", "Mr.Sniatenchuk");
  Team headwaters = new Team("Headwaters", "Waterheaders", "Nick Nurse");
  Team sugarmaple = new Team("SugarMaple", "Sugars", "Bob Bob");
  
  // initializing the athletes
  Athlete jake = new Athlete("Jake Wong", 17, 99, 70, 85, 50);
  Athlete steven = new Athlete("Steven Mu", 17, 85, 50, 95, 40);
  Athlete aditya = new Athlete("Aditya Kumar", 18, 99, 78, 69, 50);
  Athlete george = new Athlete("George Liu", 17, 1, 1, 1, 99);
  Athlete eric = new Athlete("Eric Gao", 100, 99, 99, 99, 99);
  Athlete schattman = new Athlete("Mr.Schattman", 17, 6, 80, 50, 70);
  Athlete robert = new Athlete("Xing JvnHao", 17, 65, 85, 60, 65);
  Athlete kanav = new Athlete("Kanav Patwa", 17, 50, 80, 60, 90);
  Athlete jon = new Athlete("Jon Tang", 17, 80, 70, 70, 100);
  Athlete minseo = new Athlete("Minseo Kwon", 49, 50, 1, 1, 99999);
  Athlete megan = new Athlete("Megan Boyle", 17, 70, 10, 5, 99);
  Athlete sam = new Athlete("Sam Weston", 17, 99, 99, 99, 99);
  
  // initializes the events
  Event sprint = new Event("100m Sprint", 70, 10);
  Event distance = new Event("1500m Run", 30, 70);
  
  Event lj = new Event("Long Jump", 60, 70, 0);
  Event jav = new Event("Javelin Throw", 30, 0, 70);
  
  // -----------------------
  // USING THE ABOVE OBJECTS
  
  println("------------------------------------------");
  println("WELCOME TO THE TRACK MEET SHEET GENERATOR!");
  println("------------------------------------------");
  println("The Track and Field Meet Begins at 11:30am.\n");

  // putting each athlete into teams
  lhss.addMember(jake);
  lhss.addMember(steven);
  lhss.addMember(aditya);
  lhss.addMember(george);
  
  headwaters.addMember(eric);
  headwaters.addMember(schattman);
  headwaters.addMember(robert);
  headwaters.addMember(kanav);
  
  sugarmaple.addMember(jon);
  sugarmaple.addMember(minseo);
  sugarmaple.addMember(megan);
  sugarmaple.addMember(sam);
  
  // Describes the teams
  println();
  println("INTRODUCING THE TEAMS:");
  lhss.describeTeam();
  headwaters.describeTeam();
  sugarmaple.describeTeam();
  
  // putting the athletes into events
  println();
  sprint.describeEvent();
  sprint.addToEvent(aditya);
  sprint.addToEvent(george);
  sprint.addToEvent(robert);
  sprint.addToEvent(kanav);
  sprint.addToEvent(megan);
  sprint.addToEvent(sam);
  sprint.addToEvent(jake);
  sprint.addToEvent(steven);
  sprint.addToEvent(eric);
  sprint.addToEvent(schattman);
  sprint.addToEvent(jon);
  sprint.addToEvent(minseo);
  println();
  
  distance.describeEvent();
  distance.addToEvent(aditya);
  distance.addToEvent(george);
  distance.addToEvent(robert);
  distance.addToEvent(kanav);
  distance.addToEvent(megan);
  distance.addToEvent(sam);
  distance.addToEvent(jake);
  distance.addToEvent(steven);
  distance.addToEvent(eric);
  distance.addToEvent(schattman);
  distance.addToEvent(jon);
  distance.addToEvent(minseo);
  println();
  
  lj.describeEvent();
  lj.addToEvent(aditya);
  lj.addToEvent(george);
  lj.addToEvent(robert);
  lj.addToEvent(kanav);
  lj.addToEvent(megan);
  lj.addToEvent(sam);
  lj.addToEvent(jake);
  lj.addToEvent(steven);
  lj.addToEvent(eric);
  lj.addToEvent(schattman);
  lj.addToEvent(jon);
  lj.addToEvent(minseo);
  println();
  
  jav.describeEvent();
  jav.addToEvent(aditya);
  jav.addToEvent(george);
  jav.addToEvent(robert);
  jav.addToEvent(kanav);
  jav.addToEvent(megan);
  jav.addToEvent(sam);
  jav.addToEvent(jake);
  jav.addToEvent(steven);
  jav.addToEvent(eric);
  jav.addToEvent(schattman);
  jav.addToEvent(jon);
  jav.addToEvent(minseo);
  println();
  
  println("Thanks for the entries. An image is going to be generated for the scoresheet(s).");
  
  // generating the sheets
  
  sprint.generateStartlist();
  distance.generateStartlist();
  lj.generateStartlist();
  jav.generateStartlist();
}
