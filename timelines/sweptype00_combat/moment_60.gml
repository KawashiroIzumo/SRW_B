var i;
i=actors_now
actors_sprite[i]=ls_spr1
actors_image[i]=0
actors_image_speed[i]=0.5
battlecam_speed=6
battlecam_direction=180
if(i==0)
battlecam_direction=0

j=5
actors_copy(i,j)
actors_sprite[j]=ls_wspr1

actors_copy(i,6)

j=7
actors_copy(i,j)
actors_sprite[j]=ls_tspr1

actors_reset(i)


