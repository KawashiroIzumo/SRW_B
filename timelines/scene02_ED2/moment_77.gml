/// @description 头像显示循环
var mbx=0.3,spd=0.05;
actmb=2;
with(talk_scene)
{
    i=other.actmb
    actor_alpha[i]+=spd 
}
if(talk_scene.actor_alpha[actmb]<=mbx)timeline_position--
else
{
    actor_alpha[actmb]=mbx
}

