/// @description 向右闪避
var i,rid;
i=actors_now
rid=global.mrobo_id[mrid[!i]]
actors_sprite[!i]=noone

pid=global.mrobo_pliot[mrid[!i]]
var k;
k=irandom_range(0,global.pliot_dodge_num[pid]-1)
actors_dhk_head=global.pliot_dodge_head[pid,k]
actors_dhk_face=global.pliot_dodge_face[pid,k]
actors_dhk_text=global.pliot_dodge_name[pid,k]+"：#"+global.pliot_dodge_text[pid,k]

j=40
actors_sprite[j]=global.robo_spr_rdash[rid]
actors_blend[j]=bm_normal
actors_disappear[j]=0
actors_alpha[j]=1
actors_image[j]=0
actors_x[j]=actors_x[!i]
actors_y[j]=actors_y[!i]
actors_xs[j]=actors_xs[!i]
actors_ys[j]=actors_ys[!i]
actors_image_speed[j]=1
actors_speed[j]=8
actors_direction[j]=10
if(i==1)
{
    actors_direction[j]=170
}
actors_grow[j]=-0.005
audio_play_sound(sound39_gundam_dash,1,false)

