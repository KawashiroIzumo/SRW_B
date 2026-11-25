var i;
i=actors_now
actors_sprite[!i]=global.robo_spr_rdash[global.mrobo_id[mrid[!i]]]
actors_image[!i]=9
actors_image_speed[!i]=0
actors_speed[!i]=8
actors_direction[!i]=0
if(i==1)actors_direction[!i]=180
actors_reset(7)
actors_reset(4)
actors_reset(5)
j=7
actors_sprite[j]=zdb_white
actors_image[j]=0
actors_follow[j]=1
actors_alpha[j]=1
actors_disappear[j]=0.1
actors_image_speed[j]=0.5
actors_xs[j]=1
if(i==1)actors_xs[j]=-1

