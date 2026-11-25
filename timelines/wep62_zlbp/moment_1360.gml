/// @description 归位
var i,rid;
i=actors_now
rid=global.mrobo_id[mrid[!i]]
j=4
actors_sprite[j]=global.robo_spr_rdash[rid]
actors_image[j]=0
actors_image_speed[j]=1
actors_speed[j]=8
actors_direction[j]=170
if(i==1)
{
    actors_direction[j]=10
}
actors_grow[j]=-0.005
audio_play_sound(sound39_gundam_dash,1,false)

