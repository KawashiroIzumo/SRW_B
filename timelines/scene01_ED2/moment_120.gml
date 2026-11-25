/// @description 对话内容
qname="魂魄妖梦"
qtext=@"幽幽子大人.....家里的米缸在中午的时候就已经空
了啊.....而且今天好像是放假，没人送货啊.....我已经在高价
悬赏等人送货了啊。"
qhead=thh06_youmu
create_dhk(qname,qtext,qhead)
with(talk_scene)
{   
    i=0
    actor_sprite[i]=thca27_uuz_stand 
    i=1
    actor_enable[i]=true
    actor_active[i]=true
    actor_play[i]=true
    actor_sprite[i]=thca06_youmu_talk
    actor_combo_nj[i]=2
    actor_combo[i]=thca06_youmu_stand
}

