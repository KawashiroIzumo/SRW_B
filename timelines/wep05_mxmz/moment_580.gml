var i,rid;
i=actors_now
pid=global.mrobo_pliot[mrid[i]]
var k;
k=5
actors_dhk_head=global.pliot_wep_head[pid,k]
actors_dhk_face=global.pliot_wep_face[pid,k]
actors_dhk_text=global.pliot_wep_name[pid,k]+"：#"+global.pliot_wep_text[pid,k]
i=actors_now
j=220
actors_reset(j)
j=7
actors_reset(j)
actors_sprite[j]=robo01s00_plane
actors_x[j]=battlecam_x+(1-2*i)*800
actors_y[j]=battlecam_y+128
actors_xs[j]=(1-2*i)*0.65
actors_ys[j]=0.65
actors_speed[j]=30
actors_direction[j]=170
if(i==1)actors_direction[j]=10
audio_play_sound(sound39_gundam_dash,1,0)
j=7
a=instance_create(0,0,fsq03_reimushoot_plane)
a.gz=j

