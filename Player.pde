class Player{
 
  PVector pos;
  color playerColor;
  
  public Player(){
    
  }
  
  
  
  
  public void show(){
    
    stroke(150);
    fill(playerColor);
    
    rect(pos.x-PlayerData.SIZE/2, pos.y, PlayerData.SIZE, PlayerData.SIZE);
    
  }
  
}
