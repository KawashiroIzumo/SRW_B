var i;
i=actors_now
actors_speed[!i]=0
battlecam_speed=0
actors_reset(50)
j=50
actors_sprite[j]=robo01s00_crow
actors_speed[j]=0
actors_alpha[j]=1
actors_disappear[j]=0.01
actors_rotate[j]=0
actors_rotate_speed[j]=0
actors_grow[j]=0
actors_x[j]=actors_x[!i]
actors_y[j]=actors_y[!i]
actors_xs[j]=1
if(i==1)actors_xs[j]=-1

