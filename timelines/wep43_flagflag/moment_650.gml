///@description 停止运镜 产生dummy
var i;
i=actors_now
battlecam_x=actors_x[!i+2]
battlecam_y=actors_y[!i+2]
battlecam_speed=0
j=50
actors_sprite[j]=noone
actors_speed[j]=0
j=5
actors_copy(!i,j)
actors_alpha[!i]=0