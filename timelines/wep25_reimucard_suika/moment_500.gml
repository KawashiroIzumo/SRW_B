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

actors_sprite[250]=global.robo_spr_ldash[rid]
//show_message("向左闪避 sprite="+sprite_get_name(actors_sprite[250]))
actors_image[250]=0
actors_x[250]=actors_x[!i]
actors_y[250]=actors_y[!i]
actors_xs[250]=actors_xs[!i]
actors_ys[250]=actors_ys[!i]
actors_image_speed[250]=1
actors_speed[250]=8
actors_direction[250]=200
if(i==1)
{
    actors_direction[250]=340
}
actors_grow[250]=0.005
audio_play_sound(sound39_gundam_dash,1,false)
instance_create(0,0,fsq01_reimushoot_atare)
bks[10]=bks02_justblack
bks_type[10]=0
bks_alpha[10]=0
bks_disappear[10]=-0.05

