usepackage("media9","bigfiles,noplaybutton");
import three;
//size(5cm);
real[] X={-175, -125, -75, 75, 125,175};
real[] R={50, 50, 5, 5, 50, 50};
settings.render=0;

currentprojection=orthographic(0,-100,0);
currentlight=light(-30,-30,30);

for(int i=0; i<5; ++i)
{
   path3 face1=(X[i], R[i], R[i])--(X[i+1], R[i+1], R[i+1])--(X[i+1], R[i+1],-R[i+1])--(X[i], R[i],-R[i])--cycle;
   path3 face2=(X[i], R[i], R[i])--(X[i+1], R[i+1], R[i+1])--(X[i+1],-R[i+1], R[i+1])--(X[i],-R[i], R[i])--cycle;
   path3 face3=(X[i],-R[i], R[i])--(X[i+1],-R[i+1], R[i+1])--(X[i+1],-R[i+1],-R[i+1])--(X[i],-R[i],-R[i])--cycle;
   path3 face4=(X[i], R[i],-R[i])--(X[i+1], R[i+1],-R[i+1])--(X[i+1],-R[i+1],-R[i+1])--(X[i],-R[i],-R[i])--cycle;

   draw(surface(face1),opacity(0.2),gray);
   draw(surface(face2),opacity(0.2),gray);
   draw(surface(face3),opacity(0.2),gray);
   draw(surface(face4),opacity(0.2),gray);
}


path3 edge1=(X[0], R[0], R[0])--(X[1], R[1], R[1])--(X[2], R[2], R[2])--(X[3], R[3], R[3])--(X[4], R[4], R[4])--(X[5], R[5], R[5]);
path3 edge2=(X[0], R[0],-R[0])--(X[1], R[1],-R[1])--(X[2], R[2],-R[2])--(X[3], R[3],-R[3])--(X[4], R[4],-R[4])--(X[5], R[5],-R[5]);
path3 edge3=(X[0],-R[0], R[0])--(X[1],-R[1], R[1])--(X[2],-R[2], R[2])--(X[3],-R[3], R[3])--(X[4],-R[4], R[4])--(X[5],-R[5], R[5]);
path3 edge4=(X[0],-R[0],-R[0])--(X[1],-R[1],-R[1])--(X[2],-R[2],-R[2])--(X[3],-R[3],-R[3])--(X[4],-R[4],-R[4])--(X[5],-R[5],-R[5]);

draw(edge1,black);
draw(edge2,black);
draw(edge3,black);
draw(edge4,black);

path3 edge5=(X[0],-R[0],-R[0])--(X[0],-R[0], R[0])--(X[0], R[0], R[0])--(X[0], R[0],-R[0])--cycle;
draw(edge5,black);

path3 edge6=(X[5],-R[5],-R[5])--(X[5],-R[5], R[5])--(X[5], R[5], R[5])--(X[5], R[5],-R[5])--cycle;
draw(edge6,black);


draw(shift(-135,0,0)*scale3(10)*unitsphere,gray);

