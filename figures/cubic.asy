usepackage("media9","bigfiles,noplaybutton");
import three;
import solids;
real r=0.5;
real h=40;

currentprojection=orthographic(30,-100,15);
currentlight=light(-50,-50,50);





revolution R=cylinder((-h/2,0,0),r,h,(1,0,0));

for(int i=0; i<9; ++i)
{
for(int j=0; j<9; ++j){
draw(shift(0,-20+i*5,-20+j*5)*surface(R),gray);
}
}


revolution R=cylinder((0,-h/2,0),r,h,(0,1,0));

for(int i=0; i<9; ++i)
{
for(int j=0; j<9; ++j){
draw(shift(-20+i*5,0,-20+j*5)*surface(R),gray);
}
}



revolution R=cylinder((0,0,-h/2),r,h,(0,0,1));

for(int i=0; i<9; ++i)
{
for(int j=0; j<9; ++j){
draw(shift(-20+i*5,-20+j*5,0)*surface(R),gray);
}
}





for(int i=0; i<3; ++i)
{
for(int j=0; j<3; ++j){
path3 a= (-38,-20+i*20,-20+j*20) --(-23,-20+i*20,-20+j*20);
draw(a,blue,Arrow3);
}
}






draw(shift(0,0,0)*scale3(7.5)*unitsphere,red);

