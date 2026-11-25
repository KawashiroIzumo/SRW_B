var i;
i=actors_now
battlecam_x=actors_x[!i+2]
battlecam_y=actors_y[!i+2]
battlecam_speed=0

actors_sprite[!i]=global.robo_spr_hurt[global.mrobo_id[mrid[!i]]]
if(avl_special>=0)
{
    actors_sprite[!i]=global.robo_spr_defence[global.mrobo_id[mrid[!i]]]
    info_add(global.special_name[avl_special],!i)
}
actors_image[!i]=5
actors_image_speed[!i]=0

j=50
actors_reset(j)
actors_sprite[j]=zdb2
actors_image[j]=0
actors_alpha[j]=1
actors_disappear[j]=0.1
actors_x[j]=actors_x[!i]
actors_y[j]=actors_y[!i]
actors_image_speed[j]=0.5
actors_xs[j]=1
if(i==1)actors_xs[j]=-1
actors_follow[j]=true
j=7
actors_reset(j)
actors_sprite[j]=robo23s00_badaoCG2
actors_image[j]=0
actors_alpha[j]=1
actors_x[j]=actors_x[!i]
actors_y[j]=actors_y[!i]
actors_image_speed[j]=0.5
actors_xs[j]=1
if(i==1)actors_xs[j]=-1
actors_follow[j]=true
j=5
actors_copy(!i,j)
actors_x[j]+=512
if(!i==0)actors_x[j]-=1024
j=4
actors_reset(j)
actors_sprite[j]=zdb4
actors_image[j]=0
actors_alpha[j]=1
actors_x[j]=actors_x[!i]
actors_y[j]=actors_y[!i]
actors_image_speed[j]=0.5
actors_xs[j]=1
if(i==1)actors_xs[j]=-1
actors_follow[j]=true

audio_play_sound(sound33_crow4,1,false)

