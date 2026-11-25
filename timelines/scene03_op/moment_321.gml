/// @description 局座通知
global.bgm=noone
qname="局座"
qtext="轮机部托我知会你们一声，马上要通过引力弓进行加速了，全舰抗冲击准备，格纳库闭锁！"
qhead=po08_juzuo
with(talk_scene)
{
    i=1
    actor_sprite[i]=plo09_warwolf_stand
    actor_combo[i]=noone
    
    i=2
    actor_sprite[i]=thca00_reimu_stand
    actor_combo[i]=noone
}

create_dhk(qname,qtext,qhead)

