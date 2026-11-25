var i;
i=actors_now
actros_rotate_speed[!i]=0
actors_rotate[!i]=0
actors_x[!i]=battlecam_x+(1-!i*2)*(352)
actors_y[!i]=battlecam_y+32
actors_sprite[!i]=global.robo_spr_stand[global.mrobo_id[mrid[!i]]]
actors_image[!i]=0
actors_image_speed[!i]=1
actors_speed[!i]=0
actors_direction[!i]=0
if(i==1)actors_direction[!i]=180

