/// @description 归位
var i,rid;
i=actors_now
rid=global.mrobo_id[mrid[!i]]
j=40
actors_sprite[j]=global.robo_spr_ldash[rid]
actors_image[j]=0
actors_image_speed[j]=1
actors_speed[j]=8
actors_direction[j]=190
if(i==1)
{
    actors_direction[j]=350
}
actors_grow[j]=0.005
audio_play_sound(sound39_gundam_dash,1,false)

