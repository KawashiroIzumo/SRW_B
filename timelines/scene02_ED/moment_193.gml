/// @description JK对话内容
qname="宇佐见堇子"
qtext=@"上校.....大概是材料的问题，
我已经让人去检查关节口的材料了。您
看？
"
qhead=thh28_usami_sumireko
a=create_dhk(qname,qtext,qhead)
with(talk_scene)
{
     i=0
     actor_sprite[i]=thca28_usami_talk
     actor_combo_nj[i]=1
     actor_combo[i]=thca28_usami_stand
     i=1
     actor_sprite[i]=plo14_zjh_stand
}


