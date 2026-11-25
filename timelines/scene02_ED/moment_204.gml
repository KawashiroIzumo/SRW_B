/// @description 精确移动
var mbx=-300,spd=10;
actmb=0;
with(talk_scene)
{
    i=other.actmb
    actor_x[i]-=spd 
}
if(talk_scene.actor_x[actmb]>=mbx)timeline_position--
else
{
    actor_x[actmb]=mbx
    with(talk_scene)
    {
        i=other.actmb
        actor_sprite[i]=thca28_usami_stand
    }
}

