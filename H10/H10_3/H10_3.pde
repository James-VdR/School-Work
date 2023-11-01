import controlP5.*;     
float price = 500.0;
float Calc = price*1.21;
ControlP5 cp5;

Button Click1;
Button Click2;
Textfield textfield1;

void setup()
{
  size (800,800);
 cp5 = new ControlP5(this);
 
 Click1 = cp5.addButton("click1")
 .setPosition(200,200)
 .setSize(400,200)
 .setCaptionLabel ("Click")
 
 // sets color of the label
 .setColorLabel(color(255,255,255))
 // sets the color of the button when hovering over it.
 .setColorForeground(color(220,55,10))
 // sets active color of the button when not hovering above it
 .setColorBackground(color(66,122,144));

 textfield1 = cp5
 .addTextfield("")
 .setPosition(100,100)
 .setText("Price+Tax =  ")
 .setCaptionLabel("605")
 .setColorLabel(color(255,0,0));

 ////////////////////////////////////////////////////


 
}

 void draw()
{

}
void click1()
{
 println(price + " + "+ "21%Tax");
 
  
 println(textfield1.getText() + Calc); 
}
