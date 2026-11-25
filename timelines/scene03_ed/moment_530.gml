/// @description 旁白
if(global.ls_variable[30]==0&&global.ls_variable[10]==2)
{
	qname="旁白"
	qtext=@"因为通过了对应幕间，所以【机动警察之义海豪情】解锁了。"

	global.ls_variable[30]=1
	qhead=po31_liuxing
	b=create_dhk(qname,qtext,qhead)
	b.eff=2
	audio_play_sound(SE02_onepoint24,1,0)
}