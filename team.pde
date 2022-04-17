class Team{
  String teamName;
  String mascot;
  
  String headCoach;
  ArrayList<Athlete> teamMembers;
  
  boolean lateness = false;
  
  // constructor
  Team(String teamName, String mascot, String headCoach){
    this.teamName = teamName;
    this.mascot = mascot;
    this.headCoach = headCoach;
    teamMembers = new ArrayList<Athlete>();
  }
  
  // methods of the class
  void addMember(Athlete a){
    teamMembers.add(a);
    a.team = this;
    println(a.name + " has been added to team " + this.teamName);
  }
  
  
  void describeTeam(){
    int arrivalMin;
    int arrivalHour;
    
    arrivalHour = int(random(9,12));
    arrivalMin = int(random(10,60));
    
    if (arrivalHour >= 11 && arrivalMin >30){
      lateness = true;
    }
    
    println("------------------------------");
    println(this.teamName + " " + this.mascot + " has arrived at the competition at " + arrivalHour + ":" + arrivalMin + "am.");
    
    if (lateness == true){
      println(this.teamName + " is late to the competition!\n");
    }
    else{
      println(this.teamName + " is on time for the competition!\n");
    }
      
    println(this.headCoach + " is the coach for " + this.teamName + "\n");
    
    println("Here is a list of the athletes from " + this.teamName + ":");
    
    for (int i = 0; i < teamMembers.size(); i++){
      Athlete a = teamMembers.get(i);
      println(a.name);
    }
    println();
  }
  
  // tallies the points earned from every athlete
  void tallyPoints(){
    
  }
}
