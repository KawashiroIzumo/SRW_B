var i,j,rid;
i=actors_now
pid=global.mrobo_pliot[mrid[i]]
var k;
k=1
actors_dhk_head=global.pliot_wep_head[pid,k]
actors_dhk_face=global.pliot_wep_face[pid,k]
actors_dhk_text=global.pliot_wep_name[pid,k]+"：#"+global.pliot_wep_text[pid,k]

i=actors_now
j=201
actors_sprite[j]=robo01s00_ubisoft
actors_image[j]=0
actors_image_speed[j]=1
actors_speed[j]=48
actors_x[j]=actors_x[i]-(1-2*i)*252
actors_y[j]=actors_y[i]-84

actors_direction[j]=180
if(i==1)
{
    actors_direction[j]=0
    actors_xs[j]*=-1
}
audio_play_sound(sound41_ubisoft,1,0)

