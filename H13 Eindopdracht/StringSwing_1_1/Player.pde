// player position.
float PlayerX = 100;
float PlayerY = 850;
//Player size.
float PlayerXS = 100;
float PlayerYS = 100;
float PlayerCorrection = 50;
void player(){
// draws the player as an image and corrects it to line up with the stringshot.
// this was required because the center is offset in an image compared to an ellipse.
  image(PlayerImage,PlayerX - PlayerCorrection, PlayerY-15, PlayerXS, PlayerYS);
  
}
// left and right movement.



// Out of bounds parameters.
float OutOfBoundsX = 100;
float OutOfBoundsY = 1370;

// out of bounds code makes it so the player cant go out of the screen bounderies these are set with 2 variables..
void Outofbounds() {
 
  // if the playerX cordinates are smaller then the OutofboundsX.
  // set the playerX back to the outofboundsX this prevents the player from leaving the screen.
  if (PlayerX <= OutOfBoundsX) {
    PlayerX = OutOfBoundsX;
  }
  // if the  playersX is bigger then the outofboundsY which is set at 1415 the players X will be set back to 1415 (OutofBoundsY).
  if (PlayerX>=OutOfBoundsY) {
    PlayerX = OutOfBoundsY;
  }
  // if the playerY is smaller then the OutofBoundsX which is set at 20 it will reset the Y to OutOfBoundsX.
  if (PlayerY<=OutOfBoundsX) {
    PlayerY = OutOfBoundsX;
  }
  // if the PlayerY is bigger or equal to the OutofBoundsY it will reset it to the OutOfboundsY.
  if (PlayerY>=OutOfBoundsY) {
    PlayerY=OutOfBoundsY;
  }
}

// checks if the player is on the ground and returns a boolean, used for smooth movement when combined with all movement.
Boolean IsOnGround(){
 if(PlayerY < OutOfBoundsY){
  return false; 
 }
 return true;
}
