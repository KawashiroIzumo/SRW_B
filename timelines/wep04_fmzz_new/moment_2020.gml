///@description 动画始点
var i;
i=actors_now
actors_image_speed[4]=0
actors_image[4]=9
battlecam_speed=0

j=7
var rid=global.mrobo_id[mrid[i]]
actors_sprite[j]=robo01s00_badaocf
if(rid==18)actors_sprite[j]=robo18s00_badaocf
actors_x[j]=battlecam_x+(1-2*i)*1080
actors_y[j]=battlecam_y+360
actors_xs[j]=actors_xs[i]
actors_ys[j]=actors_ys[i]
actors_grow[j]=0
actors_image[j]=0
actors_image_speed[j]=0
actors_disappear[j]=0
actors_rotate_speed[j]=0
actors_blend[j]=bm_normal
actors_speed[j]=40
actors_direction[j]=90+(1-2*i)*90
