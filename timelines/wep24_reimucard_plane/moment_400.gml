var i,j,k;
audio_play_sound(sound41_ubisoft,1,0)
j=201
i=actors_now
actors_sprite[j]=robo01s00_ubisoft
actors_image_speed[j]=1
actors_x[j]=battlecam_x+(1-2*i)*640
actors_y[j]=battlecam_y-360+irandom(720)
actors_xs[j]=1
if(i==1)actors_xs[j]*=-1
actors_ys[j]=1
actors_alpha[j]=1
actors_disappear[j]=0
actors_rotate_speed[j]=0
actors_grow[j]=0
actors_speed[j]=48
actors_direction[j]=point_direction(actors_x[j],actors_y[j],actors_x[!i],actors_y[!i])-5+irandom(10)
actors_rotate[j]=actors_direction[j]+90


