class Event{
  String eventName;
  
  int speedNeeded;
  int enduranceNeeded;
  int jumpingNeeded;
  int throwingNeeded;
  
  ArrayList<Athlete> participants;
  int num;
  boolean dupe = false;
  
  // constructors for the event class
 
  Event(String eventName, int speedNeeded, int enduranceNeeded){
    this.eventName = eventName;
    this.speedNeeded = speedNeeded;
    this.enduranceNeeded = enduranceNeeded;
    participants = new ArrayList<Athlete>();
  }
  
  // Field Events
  Event(String eventName, int speedNeeded, int jumpingNeeded, int throwingNeeded){
    this.eventName = eventName;
    this.speedNeeded = speedNeeded;
    this.jumpingNeeded = jumpingNeeded;
    this.throwingNeeded = throwingNeeded;
    participants = new ArrayList<Athlete>();
  }
  
  // methods for the event class
  
  void describeEvent(){
    println("Here is the event " + this.eventName + "! Now, we will be checking if the individuals qualify for this event.");
    println("-------------------------------------");
  }
  
  void addToEvent(Athlete a){
    int speed = a.speedRating;
    int endurance = a.enduranceRating;
    int jumping = a.jumpingRating;
    int throwing = a.throwingRating;
    
    boolean added = false;
    
    // check if the athlete's team is late or not
    if (a.team.lateness == true){
      println("The athlete " + a.name + " did not arrive before the competition. Therefore, they have been disqualified.");
    }
    
    else{
    
      // for track events
      if (this.enduranceNeeded > 0){   
        if (speed >= this.speedNeeded && endurance >= this.enduranceNeeded){
          participants.add(a);
          println(a.name + " has been successfully added to the " + this.eventName);
          added = true;
        }
      }
        
      // for field events
      if (this.jumpingNeeded > 0 || this.throwingNeeded > 0){
        if (speed >= this.speedNeeded && jumping >= this.jumpingNeeded && throwing >= this.throwingNeeded){
          participants.add(a);
          println(a.name + " has been successfully added to the " + this.eventName);
          added = true;
        }
      }
      
      if (added == false){
        println("Sorry, the athlete " + a.name + " does not qualify for " + this.eventName + ". They are not added to the competition.");
      }
    }
  }
  
  
  // the important one - generating the startlist
  
  void generateStartlist(){
    
    // prints the title
    
    textAlign(CENTER);
    textSize(28);
    fill(0,0,0);
    text("The " + this.eventName + " Competition Complete Start List", width/2, height/10);
    
    
    // prints the info 
    
    textAlign(LEFT);
    textSize(14);
    
    String participatingSchools = "";
    String school;
    
    String[] schoolsInEvent = new String[10];
    
    for (int i=0; i<this.participants.size();i++){
      
      school = this.participants.get(i).team.teamName;
      dupe = false;
      
      for (int j=0; j<schoolsInEvent.length; j++){
        if (schoolsInEvent[j] == school){
          dupe = true;
        }
      }
      
      if (dupe == false){
        schoolsInEvent[i] = school;
      }
    }
    
    for (int b=0; b<schoolsInEvent.length; b++){
      if (schoolsInEvent[b] == null){ 
      }
      else{
        participatingSchools = participatingSchools + schoolsInEvent[b] + " ";
      }
    }
    
    text("Participating schools: " + participatingSchools, 80, height/7);
    
    
    // prints the attempts
    
    textSize(15);
    textAlign(CENTER);
    if (this.enduranceNeeded > 0){
      text("PRELIM TIME        SEMI-FINAL TIME        FINAL TIME", width/1.75, height/5);
    }
    
    if (this.jumpingNeeded > 0 || this.throwingNeeded > 0){
      text("Attempt 1      Attempt 2      Attempt 3      Attempt 4      Attempt 5      Attempt 6", width/1.75, height/5);
    }
    
    
    // prints the athletes
    
    int spacing = 50;
    
    textAlign(LEFT);
    
    for (int i=0; i<this.participants.size();i++){
      textSize(15);
      text(this.participants.get(i).name, 60, height/4 + i*spacing);
      textSize(8);
      text(this.participants.get(i).team.teamName + "  " + this.participants.get(i).age + " years old", 60, height/4 + i*spacing + 12);
    }
    
    // saves the startlist
    String sheetDirectory = "sheets/";
    String sheetTitle = this.eventName + ".jpg";
    String sheetFullPath = sheetDirectory + sheetTitle;
    
    save(sheetFullPath);
    background(255);
  }
}
