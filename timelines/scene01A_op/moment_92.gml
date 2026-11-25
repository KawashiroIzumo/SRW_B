/// @description 精确移动
var mbx=1280+100,spd=15;
actmb=1;
with(talk_scene)
{
    i=other.actmb
    actor_x[i]+=spd 
}
if(talk_scene.actor_x[actmb]<=mbx)timeline_position--
else actor_x[actmb]=mbx

