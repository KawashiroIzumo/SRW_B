///@description 宇佐见堇子对话内容
qname="宇佐见堇子"
qtext=@"关于这个，我跟他忽悠了一下。
#我说“是谁不想看到阿姆罗复出？是联邦政府的废物官僚。”
#“我们把阿姆罗调动到秘密调查组做文职工作，看起来是明升暗降，实际上我们却能够掌握最强新人类的力量，你信我”
"
qhead=thh28_usami_sumireko
create_dhk(qname,qtext,qhead)
with(talk_scene)
{
	var j=1;
	actor_sprite[j]=plo23_amuro_stand
	actor_combo[j]=noone
	
	j=0
	actor_sprite[j]=thca28_usami_talk
	actor_image_index[j]=0
	actor_combo[j]=thca28_usami_stand
	actor_combo_nj[j]=4
}