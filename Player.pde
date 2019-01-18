class Player{
 
  PVector pos;
  PVector vel;
  PGraphics currentTexture;
  PGraphics[] walkingRight;
  PGraphics[] walkingLeft;
  
  public Player(PVector pos){
    
    this.pos = pos;
    this.vel = new PVector(0, 0);
    
  }
  
  public void update(){//Postition des Spielers updaten
    
    this.vel.add(0, PlayerData.GRAVITY);
    this.vel.limit(PlayerData.MAXSPEED);
    
    
    
    
  }
  
  public void show(){
    
    stroke(150);
    rect(pos.x-PlayerData.SIZE/2, pos.y, PlayerData.SIZE, PlayerData.SIZE);
    
  }
  
}
