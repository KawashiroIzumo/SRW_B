/// @description 精确移动
var mbx=360,spd=8;
actmb=0;
with(talk_scene)
{
    i=other.actmb
    actor_x[i]-=spd
}
if(talk_scene.actor_x[actmb]>=mbx)timeline_position--
else actor_x[actmb]=mbx

