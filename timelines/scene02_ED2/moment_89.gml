/// @description 精确移动
var mbx=900,spd=10;
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
        actor_sprite[i]=plo09_warwolf_stand
    }
}

