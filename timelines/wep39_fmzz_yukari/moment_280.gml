var i;
i=actors_now
actors_sprite[!i]=global.robo_spr_stand[global.mrobo_id[mrid[!i]]]
actors_image[!i]=0
actors_image_speed[!i]=1
actors_speed[!i]=0

actors_image[7]=14
actors_image_speed[7]=0

actors_speed[7]+=5
actors_speed[5]+=5
actors_rotate[7]=350
actors_rotate[5]=350
actors_direction[7]=170
actors_direction[5]=170
if(i==1)
{
    actors_direction[7]=10
    actors_direction[5]=10
}


