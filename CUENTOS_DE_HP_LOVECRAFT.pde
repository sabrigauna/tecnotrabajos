PImage cut,cut2,god,click,click2,god2,tales;
PFont timesnew,fontx;
int x = 100;
int dx = 1;
int speed;
int y = 2;
int transparencia = 0; 

void setup(){
  size (1000,1000);
  speed = 3;
  x = 100;

 
    
  cut = loadImage("cut.png");
  cut2 = loadImage("cut2.png");
  god = loadImage("babygod.png");
  god2 = loadImage("babygod2.png");
  click = loadImage("click.png");
  click2 = loadImage("click2.png");
  tales = loadImage("tales.png");
  timesnew = loadFont("TimesNewRomanPSMT-48.vlw");
  fontx = loadFont("CharlemagneStd-Bold-48.vlw");

   
}
 

void draw() {
     
  background(0);
image(tales,600,600);        
   textSize(25);
  textFont(timesnew, 25);
    text("Esperar a que la imagen llegue\n a su lugar, luego darle click\n y mantenerlo!",600,200);
    fill(#C6768A);  
    
    
    
  image(cut,0,0);
  
   if(10>5)
       image(click,520,370);
  
  
  image(god,x,400);
   x = x + speed;
       if (x > 600) {
         x=600;
       //speed = -speed;
       }
        if (mouseX>600) {
          image(click2,520,370);
          
        }


       
         
   
  

  if(mouseX > 600){
          if(mousePressed){
        dx = 2 + 2; 
        image(cut2,0,0);
   fill(255,transparencia);
  textFont(fontx, 35);
  text("La llamada",160,220);
  text("de",250,260);
  fill(#C6C04A,transparencia);
  text("CTHULHU",180,300);
  
    textSize(15);
  text("y otros cuentos",200,325);
  
fill(#F0E3E3,transparencia);  
textSize(40);
text("H.P. LOVECRAFT",110,100);
  
    
    
transparencia++;  
 
  
    
   
       
   
     }
  }
}
 
