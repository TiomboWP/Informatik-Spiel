class Player{
 
  PVector pos;
  PGraphics currentTexture;
  PGraphics[] walkingRight;
  PGraphics[] walkingLeft;
  
  public Player(PVector pos){
    
    this.pos = pos;
    
  }
  
  
  
  
  public void show(){
    
    stroke(150);
    rect(pos.x-PlayerData.SIZE/2, pos.y, PlayerData.SIZE, PlayerData.SIZE);
    
  }
  
}
