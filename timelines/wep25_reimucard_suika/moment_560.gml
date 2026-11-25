var i,rid;
i=actors_now
rid=global.mrobo_id[mrid[!i]]
actors_sprite[250]=global.robo_spr_rdash[rid]
//show_message("归位 sprite="+sprite_get_name(actors_sprite[250]))
actors_image[250]=0
actors_image_speed[250]=1
actors_speed[250]=8
actors_direction[250]=20
if(i==1)
{
    actors_direction[250]=160
}
actors_grow[250]=-0.005
audio_play_sound(sound39_gundam_dash,1,false)

