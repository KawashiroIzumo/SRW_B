var i,j;
i=actors_now
j=380
battlecam_x=actors_x[!i+2]
battlecam_y=actors_y[!i+2]
battlecam_speed=0
actors_sprite[j]=noone
actors_speed[j]=0
bks[10]=bks02_justblack
bks_type[10]=0
bks_alpha[10]=0
bks_disappear[10]=-0.05
instance_create(0,0,fsq02_reimuneedle_boober)
instance_create(0,0,fsq01_reimuneedle_atare)

