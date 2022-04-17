class Athlete{
  
  // variables
  
  String name;
  int age;
  
  int speedRating;
  int enduranceRating;
  int jumpingRating;
  int throwingRating;
  
  int pointsEarned;
  
  Team team;
  
  // constructor
  
  Athlete(String name, int age, int speedRating, int enduranceRating, int jumpingRating, int throwingRating){
    this.name = name;
    this.age = age;
    
    this.speedRating = speedRating;
    this.enduranceRating = enduranceRating;
    this.jumpingRating = jumpingRating;
    this.throwingRating = throwingRating;
  }
  
  void describe(){
    println(this.name + " is currently " + this.age + " years old.");
  }
}
