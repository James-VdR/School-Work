// calls an array with the name arraymap
int[] arrayMap = new int [28];
void Gridmap() {
  // sizes
int XRect = 50;
int YRect = 50;
int RectSizeX=50;
int RectSizeY=50;
// for loop that creates a gridmap
  for (int i =-0; i< arrayMap.length; i++) {
  for (int j =0; j< arrayMap.length; j++) {
    rect (XRect,YRect,RectSizeX,RectSizeY);
    YRect = YRect +50;
  }
XRect = XRect + 50;
YRect = 50;
}
}
