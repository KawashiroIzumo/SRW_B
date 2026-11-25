var i;
i=actors_now
vy=actors_y[i]
vx=actors_x[i]
a=instance_create(vx-(1-2*i)*250,vy+18+32,fsq00_reimushoot)
if(i==1)a.left=true
a=instance_create(vx-(1-2*i)*54,vy+27+32,fsq00_reimushoot)
if(i==1)a.left=true

