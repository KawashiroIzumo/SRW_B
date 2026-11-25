var i;
i=actors_now
vy=actors_y[i]
vx=actors_x[i]
a=instance_create(vx-(1-2*i)*237,vy+18,fsq00_reimushoot)
if(i==1)a.left=true
a.alarm[2]=10
a=instance_create(vx-(1-2*i)*67,vy+27,fsq00_reimushoot)
if(i==1)a.left=true
a.alarm[2]=10

