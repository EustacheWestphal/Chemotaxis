Bacteria[]bob = new Bacteria[100];
int x = (int)(Math.random()*41)+190;
int y = (int)(Math.random()*41)+190;
void setup()
{
    size(400, 400);
    for(int i = 0; i < bob.length; i++)
    {
        bob[i] = new Bacteria(x, y);
    }
}
void draw()
{
    background(255);
    for(int i = 0; i < bob.length; i++)
    {
        bob[i].show();
        bob[i].walk();
    }
}
class Bacteria
{
    int myX;
    int myY;
    int mySize; 
    int myColor;
    double mySpeed;
    Bacteria(x,y)
    {
        myX = x;
        myY = y;
        mySize = (int)(Math.random()*8) +1;
        mySpeed = mySize/5.0;
        myColor = (int)(Math.random()*256);
        {
            myX = (int)(Math.random()*41)+190;
            myY = (int)(Math.random()*41)+190;
        }
    }
    void show()
    {
        fill(myColor, myColor, myColor);
        stroke(myColor, myColor, myColor);
        ellipse(myX, myY, mySize, mySize); 
    }
    void walk()
    {
        if(mouseX > myX && mouseY > myY)
        {
            myX = myX - (int)(Math.random()*3);
            myY = myY -((int)(Math.random()*3)-1)*mySpeed;
        }
        else if(mouseX < myX && mouseY < myY)
        {
            myX = myX + (int)(Math.random()*3);
            myY = myY +((int)(Math.random()*3)-1)*mySpeed;
        }
        else if(mouseY < myY && mouseX > myX)
        {
            myY = myY +(int)(Math.random()*3);
            myX = myX -((int)(Math.random()*3)-1)*mySpeed;
        }
        else if(mouseY > myY && mouseX < myX)
        {
            myY = myY -(int)(Math.random()*3);
            myX = myX +((int)(Math.random()*3)-1)*mySpeed;
        }
        else
        {
        myX = myX -((int)(Math.random()*3)-1)*mySpeed;
        myY = myY +((int)(Math.random()*3)-1)*mySpeed;
        }
        if(myX > 350 && myY > 350)
        {
            myY = 200;
            myX = 200;
        }
        else if(myX > 350 && myY < 50)   
        {
            myY = 200;
            myX = 200;
        }
        else if(myX < 50 && myY < 500)
        {
            myY = 200;
            myX = 200;
        }  
        else if(myX < 50 && myY > 350)  
        {
            myY = 200;
            myX = 200;
        } 
        else 
        {    
        }
        
    } 
}
