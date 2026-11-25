/// @description 对话内容
qname="博丽真香"
qtext=@"小伙子还是太年轻了，这世界哪里有那种非黑即白的东西呢，等你
挨了社会的毒打就知道我的良苦用心了。"
qhead=thh26_hakurei_maka
create_dhk(qname,qtext,qhead)
with(talk_scene)
{
    i=1
    actor_sprite[i]=thca26_maka_talk
    actor_image_index[i]=0
    actor_combo_nj[i]=3
    actor_combo[i]=thca26_maka_stand
}

