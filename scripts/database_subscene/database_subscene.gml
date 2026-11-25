/// @description database_subscene()
function database_subscene() {
	//幕间物语
	//========-=====-=======-=====-==-=-===-=====-=======
	for(i=0;i<100;i++)
	{
	    global.subscene_name[i]="????"
	    global.subscene_text[i]="将在以后的更新中实装，也可能不会"
	    global.subscene_room[i]=ZB_room
	    global.subscene_ignore[i]=sbignoreSP_none
	}
	//========-=====-=======-=====-==-=-===-=====-=======
	i=0
	global.subscene_name[i]="好汉不提当年怂"
	global.subscene_text[i]=@"波澜哥自从离开博丽研究所后，就在铁十字的封锁区内部游荡，靠打扫战场过活，日子过得挺平稳，
#直到他遇到了一位老朋友。"
	global.subscene_room[i]=SB00_scene_op
	global.subscene_ignore[i]=sbignore00_poland01
	//========-=====-=======-=====-==-=-===-=====-=======
	i=1
	global.subscene_name[i]="最后一顿李庄白肉"
	global.subscene_text[i]="在战队中，尊哥是负责管账的，虽然他平时的工作做的非常不错，但是在一次实弹任务中，他被某个黑白强盗击坠了……"
	global.subscene_room[i]=SB01_scene_op
	global.subscene_ignore[i]=sbignore01_amuro01
	//========-=====-=======-=====-==-=-===-=====-=======
	i=2
	global.subscene_name[i]="机动警察之义海豪情 第一集"
	global.subscene_text[i]=@"刘醒请假帮黑帮大姐琪露诺做事，得到很多钱，有了开酒家的本钱，但是现在已经是宇宙时代，所以……"
	global.subscene_room[i]=SB02_scene_op
	global.subscene_ignore[i]=sbignore02_police01
	//========-=====-=======-=====-==-=-===-=====-=======
	global.subscene_num=i+1



}
