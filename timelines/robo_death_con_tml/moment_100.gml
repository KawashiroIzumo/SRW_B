var i;
i=actors_now
j=6
actors_sprite[j]=fx03_baozha
actors_x[j]=actors_x[!i]+(1-2*i)*32
actors_y[j]=actors_y[!i]+(1-2*i)*32
actors_xs[j]=2
actors_ys[j]=2
actors_image[j]=0
actors_image_speed[j]=1
actors_grow[j]=0.4
audio_play_sound(sound38_robot_doom,1,0)
actors_disappear[!i]=0.05

