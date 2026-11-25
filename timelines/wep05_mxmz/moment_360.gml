var i;
i=actors_now
battlecam_x=actors_x[!i+2]
battlecam_y=actors_y[!i+2]
battlecam_speed=0
j=50
actors_sprite[j]=noone
actors_speed[j]=0
audio_play_sound(sound33_crow4,1,false)
j=8
actors_copy(!i,j)
actors_speed[j]=0
k=10
bks_speed[k]+=actors_speed[j]
actors_direction[j]=0
if(i==1)
{
    actors_direction[j]=180
}
actors_alpha[!i]=0


