matriz mario;
matriz mark;

void setup(){
  
  size(500,500);
  
  
 mario=new matriz (10,130,75,150,10,30);
  mark=new matriz (10,130,300,150,10,30);
  
}

void draw(){

 background(0,200,130);
 mario.display();
 mario.mouse();
 
 mark.display();
 mark.mouse();
 

}

class matriz
{
  int t, u, x, y, i, j; 
  
  
  matriz(int t_, int u_, int x_, int y_,int i_, int j_)
  {
    
    t = t_;
    u = u_;
    x = x_;
    y = y_;
    i = i_;
    j = j_; 
  }
  
  void mouse()
  {
    if ((mouseX >= x & mouseX <= x+x) & (mouseY >= y & mouseY <= y+x)) 
    {
     t=10;
    }
    else 
    {
      t=5;
    }
if ((mouseX >= x & mouseX <= x+x) & (mouseY >= y & mouseY <= y+x)) 
    {
      t=10;
    }
    else 
    {
      t=5;

}
}



void display()
{      
       noStroke();
       for (i = 0; i<u; i+=t)
       {
         for (j = 0; j<u; j+=t)
       {

         fill (55,0,random(220));
         rect (x+i,y+j,t,t);
        }
      }
   }
}