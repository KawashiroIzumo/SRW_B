/// @description database_wep()
function database_wep() 
{
	//--------------------------------------------------
	#region 初始化数据
	for(i=0;i<512;i++)
	{
	    global.wep_name[i]="????"
	    global.wep_text[i]=""
	    global.wep_atk[i]=2500
	    global.wep_long[i]=1
	    global.wep_short[i]=1
	    global.wep_map[i]=0//地图炮
	    global.wep_map_type[i]=0//0：原力闪光类
	    global.wep_map_automata[i]=0//1：敌我识别型
	    global.wep_combat[i]=false//格斗武器
	    global.wep_beam[i]=false
	    global.wep_move[i]=false
	    global.wep_aim[i]=0
	    global.wep_missle[i]=false//是导弹
	    global.wep_extra[i]=false
	    global.wep_extra_spr_pose[i]=noone
	    global.wep_extra_spr_in[i]=noone
	    global.wep_extra_spr_miss[i]=noone
	    global.wep_extra_spr_toppose[i]=noone
	    global.wep_extra_spr_topin[i]=noone
	    global.wep_extra_spr_topmiss[i]=noone
	    global.wep_extra_sound_lauch[i]=noone
	    global.wep_extra_sound_hit[i]=noone
	    global.wep_base_sum[i]=0
	    global.wep_extra_talk[i]=0
	    global.wep_funnel[i]=false//是浮游炮
	    global.wep_ct[i]=0
	    global.wep_ql[i]=0
	    global.wep_en[i]=0
	    global.wep_bullet[i]=-1//-1=无限
	    global.wep_timeline[i]=wep00_polansword
	    global.wep_enable_ignore[i]=noone
		global.wep_hit_effect[i]=noone
	    for(j=0;j<4;j++)
	        global.wep_place[i,j]=3
		for(j=0;j<10;j++)
		{
			global.wep_perk_ignore[i,j]=-1//武器需求的特性（互为【或者】）
			global.wep_perk_ignore_lv[i,j]=1//武器需求的特性等级（互为【或者】）
		}
	    //0=- 1=C 2=B 3=A 4=S
	    //j=0:空 j=1:陆 j=2:水 j=3:宇
	}
	#endregion 
	//--------------------------------------------------
	i=0;
	global.wep_name[i]="弹您尻"
	global.wep_text[i]="钝器、实体剑类"
	global.wep_atk[i]=2500
	global.wep_long[i]=2
	global.wep_combat[i]=true//格斗武器
	global.wep_move[i]=true
	global.wep_aim[i]=25
	global.wep_ct[i]=10
	global.wep_timeline[i]=wep00_polandsword_new
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	//--------------------------------------------------
	i=1;
	global.wep_name[i]="掀起波澜"
	global.wep_text[i]="声波类"
	global.wep_atk[i]=2700
	global.wep_long[i]=5
	global.wep_short[i]=2
	global.wep_beam[i]=true
	global.wep_aim[i]=10
	global.wep_ct[i]=10
	global.wep_en[i]=10
	global.wep_timeline[i]=wep01_poland
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	global.wep_place[i,2]=4
	global.wep_place[i,3]=2
	//--------------------------------------------------
	i=2;
	global.wep_name[i]="骚老师打桩机（弃用）"
	global.wep_text[i]="内藏武装类，进阶招式"
	global.wep_atk[i]=3200
	global.wep_combat[i]=true//格斗武器
	global.wep_move[i]=true
	global.wep_aim[i]=25
	global.wep_ct[i]=10
	global.wep_ql[i]=110
	global.wep_bullet[i]=4
	global.wep_timeline[i]=wep02_sls
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	//--------------------------------------------------
	i=3;
	global.wep_name[i]="博丽护符"//文装
	global.wep_text[i]="爆弹类"
	global.wep_atk[i]=2500
	global.wep_long[i]=4
	global.wep_move[i]=true
	global.wep_aim[i]=25
	global.wep_bullet[i]=20//-1=无限
	global.wep_timeline[i]=wep03_reimucard_aya
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	global.wep_place[i,3]=4
	//--------------------------------------------------
	i=4;
	global.wep_name[i]="封魔针"//文装
	global.wep_text[i]="光束剑类，爪型"
	global.wep_atk[i]=2800
	global.wep_combat[i]=true//格斗武器
	global.wep_beam[i]=true
	global.wep_move[i]=true
	global.wep_aim[i]=15
	global.wep_ct[i]=10
	global.wep_en[i]=5
	global.wep_timeline[i]=wep04_fmzz_new
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	global.wep_place[i,2]=1
	global.wep_place[i,3]=4
	//--------------------------------------------------
	i=5;
	global.wep_name[i]="宝具【明珠暗投】"//文装明珠暗投，紫装梦想妙珠，萃装阴阳鬼神玉
	global.wep_text[i]="体当攻击，进阶招式"
	global.wep_atk[i]=3200
	global.wep_long[i]=5
	global.wep_short[i]=3
	global.wep_combat[i]=true//格斗武器
	global.wep_beam[i]=true
	global.wep_move[i]=true
	global.wep_aim[i]=20
	global.wep_ct[i]=15
	global.wep_ql[i]=110
	global.wep_en[i]=15
	global.wep_timeline[i]=wep05_mxmz
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	global.wep_place[i,2]=2
	//--------------------------------------------------
	i=6;
	global.wep_name[i]="连射式迅雷铳【忽悠】"
	global.wep_text[i]="光束枪类，密集阵"
	global.wep_atk[i]=2800
	global.wep_long[i]=2
	global.wep_beam[i]=true
	global.wep_move[i]=true
	global.wep_aim[i]=25
	global.wep_ct[i]=10
	global.wep_bullet[i]=20//-1=无限
	global.wep_timeline[i]=wep06_xlc
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	global.wep_place[i,2]=2
	global.wep_place[i,3]=4
	//--------------------------------------------------
	i=7;
	global.wep_name[i]="超分子材料锚索【海带】"
	global.wep_text[i]="纠缠类，赋予纠缠状态"
	global.wep_atk[i]=3200
	global.wep_long[i]=6
	global.wep_short[i]=2
	global.wep_ct[i]=20
	global.wep_en[i]=15
	global.wep_bullet[i]=-1//-1=无限
	global.wep_timeline[i]=wep07_seaweed
	global.wep_hit_effect[i]=wef01_jc
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	global.wep_place[i,2]=4
	//--------------------------------------------------
	i=8;
	global.wep_name[i]="自选式格斗武装"
	global.wep_text[i]="电热刀类"
	global.wep_atk[i]=2500
	global.wep_long[i]=2
	global.wep_combat[i]=true//格斗武器
	global.wep_move[i]=true
	global.wep_aim[i]=20
	global.wep_timeline[i]=wep08_dogeknife_new
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	//--------------------------------------------------
	i=9;
	global.wep_name[i]="光束喷枪"//量产食尸鬼
	global.wep_text[i]="光束枪类"
	global.wep_atk[i]=2300
	global.wep_long[i]=4
	global.wep_beam[i]=true
	global.wep_move[i]=true
	global.wep_aim[i]=5
	global.wep_bullet[i]=15//-1=无限
	global.wep_timeline[i]=wep09_ghastpen
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	global.wep_place[i,2]=1
	//--------------------------------------------------
	i=10;
	global.wep_name[i]="光束喷枪"//指挥官食尸鬼
	global.wep_text[i]="光束枪类"
	global.wep_atk[i]=2500
	global.wep_long[i]=4
	global.wep_beam[i]=true
	global.wep_move[i]=true
	global.wep_aim[i]=5
	global.wep_ct[i]=10
	global.wep_bullet[i]=15//-1=无限
	global.wep_timeline[i]=wep10_ghastpen_C
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	global.wep_place[i,2]=1
	//--------------------------------------------------
	i=11;
	global.wep_name[i]="六连装助力飞弹"//指挥官食尸鬼
	global.wep_text[i]="爆弹类"
	global.wep_atk[i]=2700
	global.wep_long[i]=5
	global.wep_short[i]=2
	global.wep_aim[i]=15
	global.wep_missle[i]=true//是导弹
	global.wep_bullet[i]=6//-1=无限
	global.wep_timeline[i]=wep11_ghastmissle
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	global.wep_place[i,2]=2
	//--------------------------------------------------
	i=12;
	global.wep_name[i]="电热式廓尔喀军刀"//机动深潜者
	global.wep_text[i]="电热刀类"
	global.wep_atk[i]=2500
	global.wep_long[i]=2
	global.wep_combat[i]=true//格斗武器
	global.wep_move[i]=true
	global.wep_aim[i]=15
	global.wep_timeline[i]=wep12_dogleknife_w
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	global.wep_place[i,0]=2
	//--------------------------------------------------
	i=13;
	global.wep_name[i]="电磁鱼枪"//量产深潜者
	global.wep_text[i]="实体枪类"
	global.wep_atk[i]=2300
	global.wep_long[i]=4
	global.wep_move[i]=true
	global.wep_aim[i]=5
	global.wep_bullet[i]=15//-1=无限
	global.wep_timeline[i]=wep13_fishpen
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	global.wep_place[i,2]=4
	//--------------------------------------------------
	i=14;
	global.wep_name[i]="电磁鱼枪"//深潜者
	global.wep_text[i]="实体枪类"
	global.wep_atk[i]=2300
	global.wep_long[i]=4
	global.wep_move[i]=true
	global.wep_aim[i]=5
	global.wep_bullet[i]=15//-1=无限
	global.wep_timeline[i]=wep14_fishpen_C
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	global.wep_place[i,2]=4
	//--------------------------------------------------
	i=15;
	global.wep_name[i]="电热式廓尔喀军刀"//深潜者
	global.wep_text[i]="电热刀类"
	global.wep_atk[i]=2500
	global.wep_long[i]=2
	global.wep_combat[i]=true//格斗武器
	global.wep_move[i]=true
	global.wep_aim[i]=15
	global.wep_bullet[i]=-1//-1=无限
	global.wep_timeline[i]=wep15_dogleknife_wC
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	global.wep_place[i,0]=2
	//--------------------------------------------------
	i=16;
	global.wep_name[i]="电热惩罚棍"//机动深潜者
	global.wep_text[i]="电热刀类"
	global.wep_atk[i]=2500
	global.wep_long[i]=2
	global.wep_combat[i]=true//格斗武器
	global.wep_move[i]=true
	global.wep_aim[i]=15
	global.wep_timeline[i]=wep16_dogleknife_s
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	global.wep_place[i,0]=2
	//--------------------------------------------------
	i=17;
	global.wep_name[i]="电磁步枪"//量产深潜者
	global.wep_text[i]="实体枪类"
	global.wep_atk[i]=2300
	global.wep_long[i]=4
	global.wep_move[i]=true
	global.wep_aim[i]=5
	global.wep_bullet[i]=15//-1=无限
	global.wep_timeline[i]=wep17_groundpen
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	global.wep_place[i,2]=2
	//--------------------------------------------------
	i=18;
	global.wep_name[i]="电热斩舰刀"//机动深潜者
	global.wep_text[i]="实体剑类"
	global.wep_atk[i]=2800
	global.wep_long[i]=2
	global.wep_combat[i]=true//格斗武器
	global.wep_move[i]=true
	global.wep_aim[i]=15
	global.wep_timeline[i]=wep18_dogleknife_sC
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	global.wep_place[i,0]=2
	//--------------------------------------------------
	i=19;
	global.wep_name[i]="电磁步枪"//量产深潜者
	global.wep_text[i]="实体枪类"
	global.wep_atk[i]=2300
	global.wep_long[i]=4
	global.wep_short[i]=1
	global.wep_combat[i]=false//格斗武器
	global.wep_beam[i]=false
	global.wep_move[i]=true
	global.wep_aim[i]=5
	global.wep_missle[i]=false//是导弹
	global.wep_funnel[i]=false//是浮游炮
	global.wep_ct[i]=0
	global.wep_ql[i]=0
	global.wep_en[i]=0
	global.wep_bullet[i]=15//-1=无限
	global.wep_timeline[i]=wep19_goundpen_C
	for(j=0;j<4;j++)
	    global.wep_place[i,j]=0
	    //0=- 1=C 2=B 3=A 4=S
	    //j=0:空 j=1:陆 j=2:水 j=3:宇
	global.wep_place[i,2]=2
	//--------------------------------------------------
	i=20;
	global.wep_name[i]="头部火神炮"
	global.wep_text[i]="实体枪类，密集阵"
	global.wep_atk[i]=2400
	global.wep_long[i]=2
	global.wep_move[i]=true
	global.wep_aim[i]=25
	global.wep_bullet[i]=20//-1=无限
	global.wep_timeline[i]=wep20_polandmcg
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	global.wep_place[i,3]=4
	//--------------------------------------------------
	i=21;
	global.wep_name[i]="光束战斗步枪"//文装
	global.wep_text[i]="光束枪类"
	global.wep_atk[i]=2700
	global.wep_long[i]=6
	global.wep_short[i]=2
	global.wep_beam[i]=true
	global.wep_aim[i]=15
	global.wep_en[i]=15
	global.wep_timeline[i]=wep21_heavybeam
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	global.wep_place[i,2]=1
	global.wep_place[i,3]=4
	//--------------------------------------------------
	i=22;
	global.wep_name[i]="居合射"//文装
	global.wep_text[i]="光束枪类，进阶招式"
	global.wep_atk[i]=3400
	global.wep_long[i]=3
	global.wep_beam[i]=true
	global.wep_move[i]=true
	global.wep_aim[i]=20
	global.wep_ct[i]=5
	global.wep_ql[i]=110
	global.wep_en[i]=20
	global.wep_timeline[i]=wep22_juheshe
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	global.wep_place[i,2]=2
	global.wep_place[i,3]=4
	//--------------------------------------------------
	i=23;
	global.wep_name[i]="测试用 世界探索者"
	global.wep_text[i]="？？？类"
	global.wep_atk[i]=100
	global.wep_long[i]=18
	global.wep_combat[i]=true//格斗武器
	global.wep_move[i]=true
	global.wep_timeline[i]=weptest_battleseeker
	//--------------------------------------------------
	i=24;
	global.wep_name[i]="阴阳散华"//穿波机
	global.wep_text[i]="爆弹类"
	global.wep_atk[i]=2500
	global.wep_long[i]=4
	global.wep_move[i]=true
	global.wep_aim[i]=25
	global.wep_bullet[i]=20//-1=无限
	global.wep_timeline[i]=wep24_reimucard_plane
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	global.wep_place[i,3]=4
	//--------------------------------------------------
	i=25;
	global.wep_name[i]="博丽护符"//萃香装
	global.wep_text[i]="爆弹类"
	global.wep_atk[i]=2500
	global.wep_long[i]=4
	global.wep_move[i]=true
	global.wep_aim[i]=25
	global.wep_bullet[i]=20//-1=无限
	global.wep_timeline[i]=wep25_reimucard_suika
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	global.wep_place[i,3]=4
	//--------------------------------------------------
	i=26;
	global.wep_name[i]="鬼人冲拳"//萃香装
	global.wep_text[i]="武术类"
	global.wep_atk[i]=2900
	global.wep_long[i]=2
	global.wep_combat[i]=true//格斗武器
	global.wep_move[i]=true
	global.wep_aim[i]=20
	global.wep_ct[i]=30
	global.wep_en[i]=10
	global.wep_timeline[i]=wep26_onipunch
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	global.wep_place[i,0]=2
	global.wep_place[i,1]=4
	//--------------------------------------------------
	i=27;
	global.wep_name[i]="宝具【阴阳鬼神玉】"//萃香装
	global.wep_text[i]="推进器类，进阶招式"
	global.wep_atk[i]=3500
	global.wep_combat[i]=true//格斗武器
	global.wep_move[i]=true
	global.wep_aim[i]=25
	global.wep_ct[i]=15
	global.wep_ql[i]=110
	global.wep_en[i]=30
	global.wep_timeline[i]=wep27_gaintyyy
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	global.wep_place[i,0]=2
	global.wep_place[i,1]=4
	//--------------------------------------------------
	i=28;
	global.wep_name[i]="独立团出动"
	global.wep_text[i]="召唤类，进阶招式"
	global.wep_atk[i]=3400
	global.wep_short[i]=2
	global.wep_long[i]=7
	global.wep_combat[i]=false//格斗武器
	global.wep_aim[i]=10
	global.wep_ct[i]=10
	global.wep_ql[i]=120
	global.wep_en[i]=30
	global.wep_timeline[i]=wep28_dlt
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	global.wep_place[i,2]=2
	global.wep_place[i,3]=4
	//--------------------------------------------------
	i=29;
	global.wep_name[i]="旧·灵符【巫女机关枪】"//文装
	global.wep_text[i]="实体枪类，古董"
	global.wep_atk[i]=2500
	global.wep_long[i]=4
	global.wep_move[i]=true
	global.wep_aim[i]=10
	global.wep_bullet[i]=20//-1=无限
	global.wep_timeline[i]=wep29_zakumcg_hakurei
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	global.wep_place[i,2]=2
	global.wep_place[i,3]=4
	//--------------------------------------------------
	i=30;
	global.wep_name[i]="旧·梦符【巫女战斧】"//萃香装
	global.wep_text[i]="电热刀类，古董"
	global.wep_atk[i]=2800
	global.wep_long[i]=3
	global.wep_combat[i]=true//格斗武器
	global.wep_move[i]=true
	global.wep_aim[i]=20
	global.wep_ct[i]=30
	global.wep_en[i]=5
	global.wep_timeline[i]=wep30_zakuaxe_hakurei
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	global.wep_place[i,0]=2
	global.wep_place[i,1]=4
	//--------------------------------------------------
	i=31;
	global.wep_name[i]="旧·神技【夜战八方龙杀拳】"
	global.wep_text[i]="欺诈类，古董，敌机气力-10"
	global.wep_atk[i]=3500
	global.wep_combat[i]=true//格斗武器
	global.wep_move[i]=true
	global.wep_aim[i]=25
	global.wep_ct[i]=30
	global.wep_ql[i]=115
	global.wep_en[i]=25
	global.wep_bullet[i]=3
	global.wep_timeline[i]=wep31_zakupunch_hakurei
	global.wep_hit_effect[i]=wef00_qldanmage
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	//--------------------------------------------------
	i=32;
	global.wep_name[i]="破烂德斯步枪·10%出力"//文装
	global.wep_text[i]="光束枪类，垃圾"
	global.wep_atk[i]=2500
	global.wep_long[i]=4
	global.wep_short[i]=1
	global.wep_beam[i]=true
	global.wep_move[i]=true
	global.wep_aim[i]=15
	global.wep_en[i]=5
	global.wep_timeline[i]=wep32_poland_dosgun
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	global.wep_place[i,2]=1
	global.wep_place[i,3]=4
	//--------------------------------------------------
	i=33;
	global.wep_name[i]="音波揉碎掌"
	global.wep_text[i]="武术类，学艺不精"
	global.wep_atk[i]=2600
	global.wep_long[i]=2
	global.wep_combat[i]=true//格斗武器
	global.wep_move[i]=true
	global.wep_aim[i]=25
	global.wep_ct[i]=10
	global.wep_timeline[i]=wep33_poland_punch_new
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	//--------------------------------------------------
	i=34;
	global.wep_name[i]="光束军刀"//敌方阿姆罗
	global.wep_text[i]="光束剑类，捅驾驶舱"
	global.wep_atk[i]=2500
	global.wep_long[i]=6
	global.wep_combat[i]=true//格斗武器
	global.wep_move[i]=true
	global.wep_aim[i]=15
	global.wep_timeline[i]=wep34_nt1_beamsaber
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	global.wep_place[i,0]=2
	//--------------------------------------------------
	i=35;
	global.wep_name[i]="魔导飞拳"//荷取装
	global.wep_text[i]="飞拳类"
	global.wep_atk[i]=2600
	global.wep_long[i]=4
	global.wep_move[i]=true
	global.wep_aim[i]=5
	global.wep_bullet[i]=10//-1=无限
	global.wep_timeline[i]=wep35_marisa_punch_nitori
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	//--------------------------------------------------
	i=36;
	global.wep_name[i]="恋符【极限火花】"
	global.wep_text[i]="光束炮类，魔法，进阶招式"
	global.wep_atk[i]=3500
	global.wep_short[i]=3
	global.wep_long[i]=7
	global.wep_beam[i]=true
	global.wep_combat[i]=false//格斗武器
	global.wep_move[i]=false
	global.wep_aim[i]=15
	global.wep_ct[i]=20
	global.wep_ql[i]=115
	global.wep_en[i]=30
	global.wep_timeline[i]=wep36_master_spark_nitori
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	global.wep_place[i,2]=2
	//--------------------------------------------------
	i=37;
	global.wep_name[i]="夏天的塑料瓶火箭"//荷取装
	global.wep_text[i]="爆弹类，魔法"
	global.wep_atk[i]=2800
	global.wep_short[i]=2
	global.wep_long[i]=3
	global.wep_move[i]=true
	global.wep_aim[i]=5
	global.wep_bullet[i]=6//-1=无限
	global.wep_missle[i]=true
	global.wep_timeline[i]=wep37_marisa_missle_nitori
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	//--------------------------------------------------
	i=38;
	global.wep_name[i]="喷射紫针"//紫装
	global.wep_text[i]="实体枪类"
	global.wep_atk[i]=2500
	global.wep_long[i]=4
	global.wep_move[i]=true
	global.wep_aim[i]=25
	global.wep_en[i]=5
	global.wep_timeline[i]=wep38_reimuneedle_yukari
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	global.wep_place[i,3]=4
	//--------------------------------------------------
	i=39;
	global.wep_name[i]="封魔针"//紫装
	global.wep_text[i]="光束剑类，爪形"
	global.wep_atk[i]=2800
	global.wep_combat[i]=true//格斗武器
	global.wep_beam[i]=true
	global.wep_move[i]=true
	global.wep_aim[i]=15
	global.wep_ct[i]=10
	global.wep_en[i]=5
	global.wep_timeline[i]=wep04_fmzz_new
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	global.wep_place[i,2]=1
	global.wep_place[i,3]=4
	//--------------------------------------------------
	i=40;
	global.wep_name[i]="宝具【幻光虫之巢】"
	global.wep_text[i]="相转移类，进阶招式"
	global.wep_atk[i]=3400
	global.wep_short[i]=2
	global.wep_long[i]=6
	global.wep_beam[i]=true
	global.wep_combat[i]=false//格斗武器
	global.wep_move[i]=false
	global.wep_funnel[i]=true
	global.wep_aim[i]=60
	global.wep_ct[i]=20
	global.wep_ql[i]=115
	global.wep_en[i]=30
	global.wep_timeline[i]=wep40_reimu_blackhole
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	global.wep_place[i,2]=2
	//--------------------------------------------------
	i=41;
	global.wep_name[i]="粪 坑 射 线"
	global.wep_text[i]="臭气类"
	global.wep_atk[i]=3100
	global.wep_long[i]=7
	global.wep_move[i]=true
	global.wep_aim[i]=10
	global.wep_en[i]=5
	global.wep_timeline[i]=wep41_sempai_beam
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	global.wep_place[i,2]=2
	//--------------------------------------------------
	i=42;
	global.wep_name[i]="战旗龙卷风"
	global.wep_text[i]="回旋镖类"
	global.wep_atk[i]=2500
	global.wep_long[i]=4
	global.wep_combat[i]=true//格斗武器
	global.wep_move[i]=true
	global.wep_aim[i]=15
	global.wep_ct[i]=10
	global.wep_timeline[i]=wep42_flagboomerang
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	//--------------------------------------------------
	i=43;
	global.wep_name[i]="陆家嘴战旗"
	global.wep_text[i]="镰刀类，体当攻击，暴走型"
	global.wep_atk[i]=3000
	global.wep_long[i]=1
	global.wep_combat[i]=true//格斗武器
	global.wep_move[i]=true
	global.wep_aim[i]=25
	global.wep_en[i]=10
	global.wep_ct[i]=20
	global.wep_timeline[i]=wep43_flagflag
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	//--------------------------------------------------
	i=44;
	global.wep_name[i]="巨斩剑"//额外武器
	global.wep_text[i]="实体剑类，换装武器"
	global.wep_atk[i]=3500
	global.wep_long[i]=2
	global.wep_combat[i]=true//格斗武器
	global.wep_move[i]=true
	global.wep_en[i]=30
	global.wep_ql[i]=115
	global.wep_aim[i]=25
	global.wep_ct[i]=10
	global.wep_timeline[i]=sweptype00_combat_cutin
	global.wep_extra[i]=true
	    global.wep_extra_spr_pose[i]=swep00_gaintsword_pose
	    global.wep_extra_spr_in[i]=swep00_gaintsword_in
	    global.wep_extra_spr_miss[i]=swep00_gaintsword_miss
	    global.wep_extra_sound_hit[i]=sound40_beamsaber
	    global.wep_extra_talk[i]=50
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	//--------------------------------------------------
	i=45;
	global.wep_name[i]="电热军铲"//额外武器
	global.wep_text[i]="电热刀类，换装武器，也可以用来煎蛋"
	global.wep_atk[i]=2800
	global.wep_long[i]=4
	global.wep_combat[i]=true//格斗武器
	global.wep_move[i]=true
	global.wep_en[i]=5
	global.wep_aim[i]=5
	global.wep_ct[i]=10
	global.wep_timeline[i]=sweptype00_combat
	global.wep_extra[i]=true
	    global.wep_extra_spr_pose[i]=swep01_pickaxe_pose
	    global.wep_extra_spr_in[i]=swep01_pickaxe_in
	    global.wep_extra_spr_miss[i]=swep01_pickaxe_miss
	    global.wep_extra_spr_topin[i]=swepfx00_combat_dun
	    global.wep_extra_sound_hit[i]=sound2_Blow2
	    global.wep_extra_talk[i]=51
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	//--------------------------------------------------
	i=46;
	global.wep_name[i]="M233班用机枪"//额外武器
	global.wep_text[i]="实体枪类，换装武器"
	global.wep_atk[i]=2600
	global.wep_long[i]=5
	global.wep_combat[i]=false//格斗武器
	global.wep_move[i]=true
	global.wep_bullet[i]=20
	global.wep_aim[i]=10
	global.wep_ct[i]=15
	global.wep_timeline[i]=sweptype01_shoot
	global.wep_extra[i]=true
	    global.wep_extra_spr_pose[i]=swep02_m233machine_pose
	    global.wep_extra_spr_in[i]=swep02_m233machine_in
	    global.wep_extra_spr_miss[i]=swep02_m233machine_miss
	    global.wep_extra_sound_lauch[i]=sound145_machinegun00
	    global.wep_extra_sound_hit[i]=sound9_cao
	    global.wep_extra_talk[i]=52
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	//--------------------------------------------------
	i=47;
	global.wep_name[i]="魔导飞拳"//爱丽丝装
	global.wep_text[i]="飞拳类"
	global.wep_atk[i]=2600
	global.wep_long[i]=4
	global.wep_move[i]=true
	global.wep_aim[i]=5
	global.wep_bullet[i]=10//-1=无限
	global.wep_timeline[i]=wep47_marisa_punch_alice
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	//--------------------------------------------------
	i=48;
	global.wep_name[i]="恋符【极限火花】"//爱丽丝装
	global.wep_text[i]="光束炮类，魔法，进阶招式"
	global.wep_atk[i]=3500
	global.wep_short[i]=3
	global.wep_long[i]=7
	global.wep_beam[i]=true
	global.wep_combat[i]=false//格斗武器
	global.wep_move[i]=false
	global.wep_aim[i]=15
	global.wep_ct[i]=20
	global.wep_ql[i]=115
	global.wep_en[i]=30
	global.wep_timeline[i]=wep48_master_spark_alice
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	global.wep_place[i,2]=2
	//--------------------------------------------------
	i=49;
	global.wep_name[i]="战操【小小军势】"//爱丽丝装
	global.wep_text[i]="召唤类，魔法"
	global.wep_atk[i]=2900
	global.wep_long[i]=2
	global.wep_combat[i]=true//格斗武器
	global.wep_move[i]=true
	global.wep_aim[i]=20
	global.wep_ct[i]=30
	global.wep_en[i]=10
	global.wep_timeline[i]=wep49_little_legion
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	global.wep_place[i,0]=2
	global.wep_place[i,1]=4
	//--------------------------------------------------
	i=50;
	global.wep_name[i]="灵光剑"
	global.wep_text[i]="实体剑类，魂魄流，灵光力"
	global.wep_atk[i]=3000
	global.wep_long[i]=4
	global.wep_combat[i]=true//格斗武器
	global.wep_move[i]=true
	global.wep_aim[i]=25
	global.wep_en[i]=5
	global.wep_ct[i]=5
	global.wep_timeline[i]=wep50_youmu_aurasword
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	//--------------------------------------------------
	i=51;
	global.wep_name[i]="灵光斩"
	global.wep_text[i]="光束剑类，魂魄流，灵光力"
	global.wep_atk[i]=3400
	global.wep_long[i]=2
	global.wep_combat[i]=true//格斗武器
	global.wep_move[i]=true
	global.wep_aim[i]=15
	global.wep_ct[i]=20
	global.wep_ql[i]=110
	global.wep_en[i]=20
	global.wep_timeline[i]=wep51_youmu_aurasowrdki
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	global.wep_place[i,2]=1
	//--------------------------------------------------
	i=52;
	global.wep_name[i]="星灵符【洒星封印】"
	global.wep_text[i]="波状攻击类，魔法，合体攻击"
	global.wep_atk[i]=4400
	global.wep_long[i]=3
	global.wep_combat[i]=true//格斗武器
	global.wep_move[i]=true
	global.wep_aim[i]=15
	global.wep_ct[i]=20
	global.wep_ql[i]=125
	global.wep_en[i]=40
	global.wep_timeline[i]=wep52_sslhd
	global.wep_enable_ignore[i]=wignore52_rm
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	global.wep_place[i,2]=1
	//--------------------------------------------------
	i=53;
	global.wep_name[i]="08农业小队 锄头"//额外武器
	global.wep_text[i]="实体剑类，换装武器"
	global.wep_atk[i]=2600
	global.wep_long[i]=2
	global.wep_combat[i]=true//格斗武器
	global.wep_move[i]=true
	global.wep_aim[i]=40
	global.wep_ct[i]=15
	global.wep_timeline[i]=sweptype00_combat
	global.wep_extra[i]=true
	    global.wep_extra_spr_pose[i]=swep03_08mspick_pose
	    global.wep_extra_spr_in[i]=swep03_08mspick_in
	    global.wep_extra_spr_miss[i]=swep03_08mspick_miss
	    global.wep_extra_spr_topin[i]=swepfx00_combat_dun
	    global.wep_extra_sound_hit[i]=sound2_Blow2
	    global.wep_extra_talk[i]=53
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	global.wep_place[i,2]=1
	//--------------------------------------------------
	i=54;
	global.wep_name[i]="地狱水光束步枪"//额外武器
	global.wep_text[i]="光束枪类，换装武器"
	global.wep_atk[i]=2800
	global.wep_long[i]=4
	global.wep_combat[i]=false//格斗武器
	global.wep_move[i]=true
	global.wep_beam[i]=true
	global.wep_bullet[i]=12
	global.wep_aim[i]=10
	global.wep_ct[i]=15
	global.wep_timeline[i]=sweptype01_shoot
	global.wep_extra[i]=true
	    global.wep_extra_spr_pose[i]=swep04_beamwater_pose
	    global.wep_extra_spr_in[i]=swep04_beamwater_in
	    global.wep_extra_spr_miss[i]=swep04_beamwater_miss
	    global.wep_extra_sound_lauch[i]=sound42_laser
	    global.wep_extra_sound_hit[i]=sound34_hkdrum
	    global.wep_extra_talk[i]=54 
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	global.wep_place[i,2]=1
	//--------------------------------------------------
	i=55;
	global.wep_name[i]="冷金属匕首"//额外武器
	global.wep_text[i]="实体剑类，换装武器"
	global.wep_atk[i]=2600
	global.wep_long[i]=3
	global.wep_combat[i]=true//格斗武器
	global.wep_move[i]=true
	global.wep_aim[i]=40
	global.wep_ct[i]=15
	global.wep_timeline[i]=sweptype00_combat
	global.wep_extra[i]=true
	    global.wep_extra_spr_pose[i]=swep05_coldknife_pose
	    global.wep_extra_spr_in[i]=swep05_coldknife_in
	    global.wep_extra_spr_miss[i]=swep05_coldknife_miss
	    global.wep_extra_sound_hit[i]=sound40_beamsaber
	    global.wep_extra_talk[i]=55
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	global.wep_place[i,0]=4
	global.wep_place[i,1]=4
	global.wep_place[i,2]=4
	global.wep_place[i,3]=4
	//--------------------------------------------------
	i=56;
	global.wep_name[i]="原子力飞拳发射器"//额外武器
	global.wep_text[i]="飞拳类，换装武器"
	global.wep_atk[i]=3600
	global.wep_long[i]=4
	global.wep_short[i]=2
	global.wep_combat[i]=false//格斗武器
	global.wep_move[i]=true
	global.wep_bullet[i]=6
	global.wep_aim[i]=10
	global.wep_ql[i]=115
	global.wep_ct[i]=15
	global.wep_timeline[i]=sweptype01_shoot_cutin
	global.wep_extra[i]=true
	    global.wep_extra_spr_pose[i]=swep06_rocketpunch_pose
	    global.wep_extra_spr_in[i]=swep06_rocketpunch_in
	    global.wep_extra_spr_miss[i]=swep06_rocketpunch_in
	    global.wep_extra_sound_lauch[i]=SE00_water06
	    global.wep_extra_sound_hit[i]=SE05_syber05
	    global.wep_extra_talk[i]=54
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	//--------------------------------------------------
	i=57;
	global.wep_name[i]="千鸡伞"//额外武器
	global.wep_text[i]="生物剑类，换装武器，叶修强力推荐"
	global.wep_atk[i]=4000
	global.wep_long[i]=2
	global.wep_combat[i]=true//格斗武器
	global.wep_move[i]=true
	global.wep_bullet[i]=3
	global.wep_ql[i]=120
	global.wep_aim[i]=25
	global.wep_ct[i]=10
	global.wep_timeline[i]=sweptype00_combat_cutin
	global.wep_extra[i]=true
	    global.wep_extra_spr_pose[i]=swep07_chicken_pose
	    global.wep_extra_spr_in[i]=swep07_chicken_in
	    global.wep_extra_spr_miss[i]=swep07_chicken_miss
	    global.wep_extra_sound_hit[i]=SE08_chicken
	    global.wep_extra_talk[i]=55
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	//--------------------------------------------------
	i=58;
	global.wep_name[i]="冰符【冰柱机枪】"//爱丽丝装
	global.wep_text[i]="欺诈类，魔法，冰属性"
	global.wep_atk[i]=2800
	global.wep_long[i]=4
	global.wep_combat[i]=true//格斗武器
	global.wep_move[i]=true
	global.wep_aim[i]=5
	global.wep_ct[i]=10
	global.wep_en[i]=9
	global.wep_timeline[i]=wep58_icemachine
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	global.wep_place[i,0]=2
	global.wep_place[i,2]=1
	//--------------------------------------------------
	i=59;
	global.wep_name[i]="冻符【巨冰破碎】"//
	global.wep_text[i]="武术类，魔法，冰属性"
	global.wep_atk[i]=4999
	global.wep_long[i]=1
	global.wep_combat[i]=true//格斗武器
	global.wep_move[i]=true
	global.wep_aim[i]=9
	global.wep_ct[i]=9
	global.wep_ql[i]=125
	global.wep_en[i]=40
	global.wep_timeline[i]=wep59_greatcrusher
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	global.wep_place[i,0]=2
	global.wep_place[i,2]=1
	//--------------------------------------------------
	i=60;
	global.wep_name[i]="纯白【钻石风暴】"//
	global.wep_text[i]="冷气散布类，魔法，冰属性，造成冻伤效果"
	global.wep_atk[i]=2700
	global.wep_long[i]=4
	global.wep_combat[i]=false//格斗武器
	global.wep_map[i]=1//地图炮
	    global.wep_map_type[i]=0//0：原力闪光类
	    global.wep_map_automata[i]=1//1：敌我识别型
	global.wep_move[i]=true
	global.wep_aim[i]=-5
	global.wep_ct[i]=10
	global.wep_ql[i]=109
	global.wep_en[i]=30
	global.wep_timeline[i]=mwep60_diamond
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	global.wep_place[i,2]=1
	//--------------------------------------------------
	i=61;
	global.wep_name[i]="小弹【人力CIWS】"//文装
	global.wep_text[i]="光束枪类，密集阵"
	global.wep_atk[i]=2600
	global.wep_long[i]=3
	global.wep_beam[i]=false
	global.wep_move[i]=true
	global.wep_aim[i]=25
	global.wep_ct[i]=10
	global.wep_bullet[i]=25//-1=无限
	global.wep_timeline[i]=wep61_ciws
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	global.wep_place[i,3]=4
	//--------------------------------------------------
	i=62;
	global.wep_name[i]="冲击【五分魂激流】"//文装
	global.wep_text[i]="光束炮类，主炮"
	global.wep_atk[i]=3800
	global.wep_long[i]=8
	global.wep_short[i]=4
	global.wep_beam[i]=true
	global.wep_move[i]=false
	global.wep_aim[i]=5
	global.wep_ct[i]=10
	global.wep_en[i]=25
	global.wep_ql[i]=115
	global.wep_timeline[i]=wep62_zlbp
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	global.wep_place[i,3]=4
	global.wep_place[i,2]=1
	//--------------------------------------------------
	i=63;
	global.wep_name[i]="冲击【五分魂激流】"//
	global.wep_text[i]="光束炮类，主炮"
	global.wep_atk[i]=3000
	global.wep_long[i]=6
	global.wep_beam[i]=true
	global.wep_combat[i]=false//格斗武器
	global.wep_map[i]=1//地图炮
	    global.wep_map_type[i]=1//0：原力闪光类 1：重力波炮类
	    global.wep_map_automata[i]=0//1：敌我识别型
	global.wep_move[i]=false
	global.wep_aim[i]=-5
	global.wep_ct[i]=10
	global.wep_ql[i]=120
	global.wep_en[i]=35
	global.wep_timeline[i]=mwep63_zlbp 
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	global.wep_place[i,3]=4
	global.wep_place[i,2]=1
	//--------------------------------------------------
	i=64;
	global.wep_name[i]="+1锐锋电热斧"
	global.wep_text[i]="电热刀类，魔法武器"
	global.wep_atk[i]=2600
	global.wep_long[i]=3
	global.wep_combat[i]=true//格斗武器
	global.wep_move[i]=true
	global.wep_aim[i]=25
	global.wep_ct[i]=35
	global.wep_timeline[i]=wep64_zakuaxe_fz2
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	//--------------------------------------------------
	i=65;
	global.wep_name[i]="+1寻血火箭筒"
	global.wep_text[i]="爆弹类，魔法武器"
	global.wep_atk[i]=2800
	global.wep_long[i]=6
	global.wep_short[i]=2
	global.wep_beam[i]=false
	global.wep_move[i]=false
	global.wep_aim[i]=10
	global.wep_ct[i]=10
	global.wep_bullet[i]=10
	global.wep_timeline[i]=wep65_zaku_cannon
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	global.wep_place[i,2]=2
	global.wep_place[i,3]=2
	//--------------------------------------------------
	i=66;
	global.wep_name[i]="塑能系【灼热射线】"
	global.wep_text[i]="光束枪类，魔法"
	global.wep_atk[i]=2800
	global.wep_long[i]=5
	global.wep_short[i]=3
	global.wep_beam[i]=true
	global.wep_aim[i]=10
	global.wep_ct[i]=10
	global.wep_en[i]=10
	global.wep_timeline[i]=wep66_firebeam
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	global.wep_place[i,2]=1
	global.wep_place[i,3]=4
	//--------------------------------------------------
	i=67;
	global.wep_name[i]="变化系【高等魔化武器】"
	global.wep_text[i]="召唤武器类，魔法"
	global.wep_atk[i]=3000
	global.wep_long[i]=2
	global.wep_short[i]=1
	global.wep_beam[i]=false
	global.wep_aim[i]=20
	global.wep_ct[i]=10
	global.wep_en[i]=20
	global.wep_timeline[i]=wep67_dom_sword
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	//--------------------------------------------------
	i=68;
	global.wep_name[i]="超音波"
	global.wep_text[i]="声波类，奴隶"
	global.wep_atk[i]=2800
	global.wep_long[i]=6
	global.wep_short[i]=1
	global.wep_beam[i]=true
	global.wep_move[i]=true
	global.wep_aim[i]=10
	global.wep_ct[i]=10
	global.wep_en[i]=20
	global.wep_timeline[i]=wep68_devilsound
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	global.wep_place[i,2]=1
	global.wep_place[i,3]=4
	//--------------------------------------------------
	i=69;
	global.wep_name[i]="海兹尔全方位攻击"
	global.wep_text[i]="卖背包类，必杀技"
	global.wep_atk[i]=4800
	global.wep_long[i]=3
	global.wep_short[i]=1
	global.wep_beam[i]=true
	global.wep_move[i]=true
	global.wep_aim[i]=15
	global.wep_ct[i]=15
	global.wep_ql[i]=135
	global.wep_bullet[i]=3
	global.wep_timeline[i]=wep69_hws
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	global.wep_place[i,2]=1
	global.wep_place[i,3]=4
	//--------------------------------------------------
	i=70;
	global.wep_name[i]="高能米加粒子大蛇炮"
	global.wep_text[i]="光束炮类"
	global.wep_atk[i]=4000
	global.wep_long[i]=12
	global.wep_short[i]=1
	global.wep_beam[i]=true
	global.wep_move[i]=false
	global.wep_aim[i]=5
	global.wep_ct[i]=0
	global.wep_en[i]=5
	global.wep_timeline[i]=wep70_orochi_cannon
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	global.wep_place[i,2]=1
	global.wep_place[i,3]=4
	//--------------------------------------------------
	i=71;
	global.wep_name[i]="英伟达光线追踪"
	global.wep_text[i]="光束炮类"
	global.wep_atk[i]=2800
	global.wep_long[i]=5
	global.wep_short[i]=1
	global.wep_combat[i]=1
	global.wep_beam[i]=true
	global.wep_move[i]=true
	global.wep_aim[i]=10
	global.wep_ct[i]=10
	global.wep_en[i]=20
	global.wep_timeline[i]=wep71_nvidia_light
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	global.wep_place[i,2]=1
	global.wep_place[i,3]=4
	//--------------------------------------------------
	i=72;
	global.wep_name[i]="风符【斩斧·麒麟幻】"
	global.wep_text[i]="召唤武器类，怪物猎人"
	global.wep_atk[i]=2800
	global.wep_long[i]=3
	global.wep_short[i]=1
	global.wep_combat[i]=1
	global.wep_beam[i]=false
	global.wep_move[i]=true
	global.wep_aim[i]=10
	global.wep_ct[i]=10
	global.wep_en[i]=5
	global.wep_timeline[i]=wep72_getter_axe
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	global.wep_place[i,2]=2
	global.wep_place[i,3]=4
	//--------------------------------------------------
	i=73;
	global.wep_name[i]="花符【重弩·彻甲榴弹】"
	global.wep_text[i]="召唤武器类，怪物猎人"
	global.wep_atk[i]=3200
	global.wep_long[i]=5
	global.wep_short[i]=2
	global.wep_combat[i]=0
	global.wep_beam[i]=false
	global.wep_move[i]=0
	global.wep_aim[i]=0
	global.wep_ct[i]=10
	global.wep_bullet[i]=6
	global.wep_timeline[i]=wep73_getter_sniper
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	//--------------------------------------------------
	i=74;
	global.wep_name[i]="魔导飞拳"//帕奇装
	global.wep_text[i]="飞拳类"
	global.wep_atk[i]=2600
	global.wep_long[i]=4
	global.wep_move[i]=true
	global.wep_aim[i]=5
	global.wep_bullet[i]=10//-1=无限
	global.wep_timeline[i]=wep74_marisa_punch_patch
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	//--------------------------------------------------
	i=75;
	global.wep_name[i]="恋符【极限火花】"
	global.wep_text[i]="光束炮类，魔法，进阶招式"
	global.wep_atk[i]=3500
	global.wep_short[i]=3
	global.wep_long[i]=7
	global.wep_beam[i]=true
	global.wep_combat[i]=false//格斗武器
	global.wep_move[i]=false
	global.wep_aim[i]=15
	global.wep_ct[i]=20
	global.wep_ql[i]=115
	global.wep_en[i]=30
	global.wep_timeline[i]=wep75_master_spark_patch
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	global.wep_place[i,2]=2
	//--------------------------------------------------
	i=76;
	global.wep_name[i]="火符【火神之光】"//
	global.wep_text[i]="火焰放射类，魔法"
	global.wep_atk[i]=2800
	global.wep_long[i]=4
	global.wep_combat[i]=false//格斗武器
	global.wep_map[i]=1//地图炮
	    global.wep_map_type[i]=0//0：原力闪光类
	    global.wep_map_automata[i]=1//1：敌我识别型
	global.wep_move[i]=true
	global.wep_aim[i]=-5
	global.wep_ct[i]=10
	global.wep_ql[i]=110
	global.wep_en[i]=30
	global.wep_timeline[i]=mwep76_agni_shine
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	global.wep_place[i,2]=4
	//--------------------------------------------------
	i=77;
	global.wep_name[i]="金符【银龙吐息】"//
	global.wep_text[i]="吐息类，魔法"
	global.wep_atk[i]=2900
	global.wep_long[i]=5
	global.wep_combat[i]=false//格斗武器
	global.wep_map[i]=1//地图炮
	    global.wep_map_type[i]=2//2：吐息
	    global.wep_map_automata[i]=0//0：无敌我识别
	global.wep_move[i]=true
	global.wep_aim[i]=-10
	global.wep_ct[i]=10
	global.wep_ql[i]=110
	global.wep_en[i]=30
	global.wep_timeline[i]=mwep77_sliverdragon
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	global.wep_place[i,2]=4
	//--------------------------------------------------
	i=78;
	global.wep_name[i]="【梦想封印·无双】"
	global.wep_text[i]="高速连击类，必杀技"
	global.wep_atk[i]=5000
	global.wep_combat[i]=true
	global.wep_long[i]=4
	global.wep_short[i]=2
	global.wep_beam[i]=false
	global.wep_move[i]=true
	global.wep_aim[i]=25
	global.wep_ct[i]=10
	global.wep_ql[i]=140
	global.wep_bullet[i]=4
	global.wep_timeline[i]=wep78_mxfy_musou
	global.wep_enable_ignore[i]=wignore78_reimu_super
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	global.wep_place[i,0]=4
	global.wep_place[i,2]=2
	//--------------------------------------------------
	i=79;
	global.wep_name[i]="【被遗忘的梦想封印】"
	global.wep_text[i]="体型变化类，“大”招，体型差无视"
	global.wep_atk[i]=5000
	global.wep_combat[i]=true
	global.wep_long[i]=1
	global.wep_short[i]=1
	global.wep_beam[i]=false
	global.wep_move[i]=true
	global.wep_aim[i]=25
	global.wep_ct[i]=10
	global.wep_ql[i]=140
	global.wep_en[i]=40
	global.wep_timeline[i]=wep79_mxfy_gaint
	global.wep_enable_ignore[i]=wignore78_reimu_super
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	global.wep_place[i,1]=4
	global.wep_place[i,2]=2
	//--------------------------------------------------
	i=80;
	global.wep_name[i]="【凭坐与下仆的境界】"
	global.wep_text[i]="画中世界类，必杀技"
	global.wep_atk[i]=5200
	global.wep_combat[i]=false
	global.wep_long[i]=9
	global.wep_short[i]=4
	global.wep_beam[i]=false
	global.wep_move[i]=false
	global.wep_aim[i]=35
	global.wep_ct[i]=10
	global.wep_ql[i]=140
	global.wep_en[i]=40
	global.wep_timeline[i]=wep80_mxfy_yakumo
	global.wep_enable_ignore[i]=wignore78_reimu_super
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	global.wep_place[i,1]=4
	global.wep_place[i,2]=2
	//--------------------------------------------------
	i=81;
	global.wep_name[i]="仙术【百步飞剑】"
	global.wep_text[i]="召唤武器类，仙术"
	global.wep_atk[i]=2800
	global.wep_long[i]=4
	global.wep_move[i]=true
	global.wep_aim[i]=5
	global.wep_bullet[i]=8//-1=无限
	global.wep_timeline[i]=wep81_100sword
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	//--------------------------------------------------
	i=82;
	global.wep_name[i]="法宝【镇妖剑】"
	global.wep_text[i]="相转移类，实体剑类，仙术"
	global.wep_atk[i]=3000
	global.wep_long[i]=2
	global.wep_combat[i]=true//格斗武器
	global.wep_move[i]=true
	global.wep_aim[i]=25
	global.wep_ct[i]=10
	global.wep_en[i]=5
	global.wep_timeline[i]=wep82_whitesword
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	//--------------------------------------------------
	i=83;
	global.wep_name[i]="【M.S.B.R】"
	global.wep_text[i]="工具人献祭类，魔法，必杀技"
	global.wep_atk[i]=5000
	global.wep_combat[i]=false
	global.wep_long[i]=10
	global.wep_short[i]=5
	global.wep_beam[i]=true
	global.wep_move[i]=false
	global.wep_aim[i]=10
	global.wep_ct[i]=10
	global.wep_ql[i]=140
	global.wep_en[i]=40
	global.wep_timeline[i]=wep83_msbr
	global.wep_enable_ignore[i]=wignore83_marisa_super
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	global.wep_place[i,0]=2
	global.wep_place[i,2]=4
	//--------------------------------------------------
	i=84;
	global.wep_name[i]="AM黑桃迫击炮"//
	global.wep_text[i]="呼吸班级，改变中武器"
	global.wep_atk[i]=3000
	global.wep_long[i]=3
	global.wep_combat[i]=false//格斗武器
	global.wep_map[i]=1//地图炮
	    global.wep_map_type[i]=2//2：吐息
	    global.wep_map_automata[i]=0//0：无敌我识别
	global.wep_move[i]=true
	global.wep_aim[i]=-10
	global.wep_ct[i]=10
	global.wep_ql[i]=110
	global.wep_en[i]=30
	global.wep_timeline[i]=mwep84_shovel
	global.wep_perk_ignore[i,0]=15
	global.wep_extra[i]=true
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	global.wep_place[i,2]=4
	//--------------------------------------------------
	i=85;
	global.wep_name[i]="米诺夫斯基射钉枪"
	global.wep_text[i]="实体枪类，工业用"
	global.wep_atk[i]=2500
	global.wep_long[i]=6
	global.wep_short[i]=3
	global.wep_move[i]=false
	global.wep_aim[i]=5
	global.wep_bullet[i]=8
	global.wep_timeline[i]=wep85_dingqiang
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	global.wep_place[i,2]=2
	//--------------------------------------------------
	i=86;
	global.wep_name[i]="工业摇臂"
	global.wep_text[i]="走投无路类，工业用"
	global.wep_atk[i]=3000
	global.wep_long[i]=2
	global.wep_combat[i]=true//格斗武器
	global.wep_move[i]=true
	global.wep_aim[i]=25
	global.wep_ct[i]=10
	global.wep_en[i]=5
	global.wep_timeline[i]=wep86_factorypunch
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	//--------------------------------------------------
	i=87;
	global.wep_name[i]="【战阵魔丽丝】"
	global.wep_text[i]="人海战术类，魔法，必杀技"
	global.wep_atk[i]=4800
	global.wep_long[i]=3
	global.wep_short[i]=1
	global.wep_beam[i]=true
	global.wep_move[i]=true
	global.wep_aim[i]=10
	global.wep_ct[i]=15
	global.wep_ql[i]=140
	global.wep_bullet[i]=5
	global.wep_timeline[i]=wep87_moris
	global.wep_enable_ignore[i]=wignore83_marisa_super
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	global.wep_place[i,2]=1
	global.wep_place[i,3]=4
	//--------------------------------------------------
	i=88;
	global.wep_name[i]="【皇家星尘】"//
	global.wep_text[i]="没有诚意类，魔法，必杀技"
	global.wep_atk[i]=4000
	global.wep_long[i]=6
	global.wep_combat[i]=false//格斗武器
	global.wep_move[i]=false
	global.wep_map[i]=1//地图炮
	    global.wep_map_type[i]=0//0:原力闪光
	    global.wep_map_automata[i]=1//1：敌我识别
	global.wep_move[i]=true
	global.wep_aim[i]=-20
	global.wep_ct[i]=10
	global.wep_ql[i]=140
	global.wep_en[i]=100
	global.wep_timeline[i]=mwep88_royalstardust
	global.wep_enable_ignore[i]=wignore83_marisa_super
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	global.wep_place[i,2]=4
	//--------------------------------------------------
	i=89;
	global.wep_name[i]="GN笔刀射击模式"
	global.wep_text[i]="光束枪类，创战者"
	global.wep_atk[i]=2700
	global.wep_long[i]=4
	global.wep_short[i]=2
	global.wep_beam[i]=true
	global.wep_move[i]=true
	global.wep_aim[i]=10
	global.wep_ct[i]=10
	global.wep_en[i]=10
	global.wep_timeline[i]=wep89_GNrifle
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	global.wep_place[i,2]=2
	global.wep_place[i,3]=2
	//--------------------------------------------------
	i=90;
	global.wep_name[i]="GN面相笔"//机动深潜者
	global.wep_text[i]="电热刀类，创战者"
	global.wep_atk[i]=2900
	global.wep_long[i]=2
	global.wep_combat[i]=true//格斗武器
	global.wep_move[i]=true
	global.wep_aim[i]=15
	global.wep_timeline[i]=wep90_GNpen
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	global.wep_place[i,0]=2
	//--------------------------------------------------
	i=91;
	global.wep_name[i]="爆热神之手"
	global.wep_text[i]="乱扔垃圾类，创战者"
	global.wep_atk[i]=3500
	global.wep_long[i]=6
	global.wep_short[i]=4
	global.wep_beam[i]=false
	global.wep_move[i]=false
	global.wep_aim[i]=10
	global.wep_ct[i]=10
	global.wep_en[i]=30
	global.wep_ql[i]=115
	global.wep_timeline[i]=wep91_GNmagnan
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	global.wep_place[i,3]=4
	//--------------------------------------------------
	i=92;
	global.wep_name[i]="E-pack光束马刀"//额外武器
	global.wep_text[i]="光束剑类，古董，换装武器"
	global.wep_atk[i]=3100
	global.wep_long[i]=3
	global.wep_combat[i]=true//格斗武器
	global.wep_beam[i]=true
	global.wep_move[i]=true
	global.wep_aim[i]=40
	global.wep_ct[i]=15
	global.wep_bullet[i]=6
	global.wep_ql[i]=110
	global.wep_timeline[i]=sweptype00_combat
	global.wep_extra[i]=true
	    global.wep_extra_spr_pose[i]=swep11_beamsaber_pose
	    global.wep_extra_spr_in[i]=swep11_beamsaber_hit
	    global.wep_extra_spr_miss[i]=swep11_beamsaber_miss
		global.wep_extra_spr_topin[i]=swepfx01_beamsaber_
	    global.wep_extra_sound_hit[i]=sound40_beamsaber
	
	    global.wep_extra_talk[i]=57
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	global.wep_place[i,0]=4
	global.wep_place[i,1]=4
	global.wep_place[i,2]=1
	global.wep_place[i,3]=4
	//--------------------------------------------------
	i=93;
	global.wep_name[i]="濡湿小镰刀"//额外武器
	global.wep_text[i]="电热刀类，丢人，换装武器"
	global.wep_atk[i]=2800
	global.wep_long[i]=1
	global.wep_combat[i]=true//格斗武器
	global.wep_move[i]=true
	global.wep_aim[i]=20
	global.wep_ct[i]=10
	global.wep_timeline[i]=sweptype00_combat
	global.wep_extra[i]=true
	    global.wep_extra_spr_pose[i]=swep12_littlerazor_pose
	    global.wep_extra_spr_in[i]=swep12_littlerazor_hit
	    global.wep_extra_spr_miss[i]=swep12_littlerazor_miss
	    global.wep_extra_sound_hit[i]=sound40_beamsaber
	
	    global.wep_extra_talk[i]=55
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	global.wep_place[i,2]=4
	//--------------------------------------------------
	i=94;
	global.wep_name[i]="黑暗剑"//额外武器
	global.wep_text[i]="不存在类，丢人，换装武器"
	global.wep_atk[i]=2200
	global.wep_long[i]=22
	global.wep_combat[i]=true//格斗武器
	global.wep_move[i]=true
	global.wep_aim[i]=22
	global.wep_ct[i]=22
	global.wep_bullet[i]=22
	global.wep_en[i]=22
	global.wep_ql[i]=122
	global.wep_timeline[i]=sweptype00_combat
	global.wep_extra[i]=true
	    global.wep_extra_spr_pose[i]=swep13_darksword_pose
	    global.wep_extra_spr_in[i]=swep13_darksword_hit
	    global.wep_extra_spr_miss[i]=swep13_darksword_miss
	    global.wep_extra_sound_hit[i]=SE23_rua
	
	    global.wep_extra_talk[i]=58
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	global.wep_place[i,2]=4
	//--------------------------------------------------
	i=95;
	global.wep_name[i]="猛男燧发手炮"//额外武器
	global.wep_text[i]="实体枪类，古董，换装武器"
	global.wep_atk[i]=3200
	global.wep_long[i]=3
	global.wep_short[i]=2
	global.wep_combat[i]=false//格斗武器
	global.wep_move[i]=true
	global.wep_bullet[i]=3
	global.wep_aim[i]=-15
	global.wep_ql[i]=110
	global.wep_ct[i]=15
	global.wep_timeline[i]=sweptype01_shoot
	global.wep_extra[i]=true
	    global.wep_extra_spr_pose[i]=swep14_malegun_pose
	    global.wep_extra_spr_toppose[i]=swep14_malegun_frontpose
	    global.wep_extra_spr_in[i]=swep14_malegun_hit
	    global.wep_extra_spr_miss[i]=swep14_malegun_miss
	    global.wep_extra_sound_lauch[i]=SE24_fa
	    global.wep_extra_sound_hit[i]=SE01_explosion06
	    global.wep_extra_talk[i]=59
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	//--------------------------------------------------
	i=96;
	global.wep_name[i]="魔杖：冰雷射线"//额外武器
	global.wep_text[i]="魔法普及类，魔法，换装武器"
	global.wep_atk[i]=3500
	global.wep_long[i]=6
	global.wep_short[i]=4
	global.wep_combat[i]=false//格斗武器
	global.wep_move[i]=false
	global.wep_bullet[i]=1
	global.wep_aim[i]=5
	global.wep_ql[i]=115
	global.wep_ct[i]=15
	global.wep_timeline[i]=sweptype01_shoot_cutin
	global.wep_extra[i]=true
	    global.wep_extra_spr_pose[i]=swep15_lightingstaff_pose
	    global.wep_extra_spr_in[i]=swep15_lightingstaff_hit
	    global.wep_extra_spr_miss[i]=swep15_lightingstaff_miss
	    global.wep_extra_sound_lauch[i]=SE18_electricity
	    global.wep_extra_sound_hit[i]=SE18_electricity
	    global.wep_extra_talk[i]=60
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	//--------------------------------------------------
	i=97;
	global.wep_name[i]="报废的SUV"//额外武器
	global.wep_text[i]="汽车类，垃圾，换装武器"
	global.wep_atk[i]=2500
	global.wep_long[i]=2
	global.wep_combat[i]=true//格斗武器
	global.wep_move[i]=true
	global.wep_aim[i]=30
	global.wep_ct[i]=10
	global.wep_timeline[i]=sweptype00_combat
	global.wep_extra[i]=true
	    global.wep_extra_spr_pose[i]=swep16_SUV_pose
	    global.wep_extra_spr_in[i]=swep16_SUV_hit
	    global.wep_extra_spr_miss[i]=swep16_SUV_miss
	    global.wep_extra_spr_topin[i]=swepfx00_combat_dun
	    global.wep_extra_sound_hit[i]=sound2_Blow2
	    global.wep_extra_talk[i]=55
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	global.wep_place[i,2]=4
	//--------------------------------------------------
	i=98;
	global.wep_name[i]="盒子炮"
	global.wep_text[i]="实体枪类，警用，对邪恶阵营伤害x1.25"
	global.wep_atk[i]=2700
	global.wep_long[i]=3
	global.wep_short[i]=1
	global.wep_move[i]=true
	global.wep_aim[i]=10
	global.wep_ct[i]=10
	global.wep_bullet[i]=10
	global.wep_timeline[i]=wep98_mauser
	global.wep_hit_effect[i]=wef02_pxz
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	global.wep_place[i,2]=2
	//--------------------------------------------------
	i=99;
	global.wep_name[i]="破邪斩"
	global.wep_text[i]="钝器类，警用，对邪恶阵营伤害x1.25"
	global.wep_atk[i]=3100
	global.wep_long[i]=1
	global.wep_short[i]=1
	global.wep_move[i]=true
	global.wep_combat[i]=true
	global.wep_aim[i]=20
	global.wep_ct[i]=10
	global.wep_en[i]=15
	global.wep_timeline[i]=wep99_smite
	global.wep_hit_effect[i]=wef02_pxz
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	global.wep_place[i,2]=2
	//--------------------------------------------------
	i=100;
	global.wep_name[i]="镇暴用天基臭蛋"
	global.wep_text[i]="臭蛋类，警用，对邪恶阵营伤害x1.25，进阶招式"
	global.wep_atk[i]=3800
	global.wep_long[i]=6
	global.wep_short[i]=3
	global.wep_move[i]=false
	global.wep_combat[i]=false
	global.wep_aim[i]=5
	global.wep_ct[i]=10
	global.wep_en[i]=20
	global.wep_bullet[i]=6
	global.wep_ql[i]=115
	global.wep_timeline[i]=wep100_shitbomb
	global.wep_hit_effect[i]=wef02_pxz
	global.wep_enable_ignore[i]=wignore100_lowsing_advance
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	global.wep_place[i,2]=2
	global.wep_place[i,3]=2
	//--------------------------------------------------
	i=101;
	global.wep_name[i]="火鸡面踢击"
	global.wep_text[i]="武术类，浪费食物"
	global.wep_atk[i]=2800
	global.wep_long[i]=3
	global.wep_short[i]=1
	global.wep_move[i]=true
	global.wep_combat[i]=true
	global.wep_aim[i]=10
	global.wep_ct[i]=10
	global.wep_en[i]=5
	global.wep_timeline[i]=wep101_noodlekick
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	global.wep_place[i,2]=2
	//--------------------------------------------------
	i=102;
	global.wep_name[i]="盒子炮"
	global.wep_text[i]="实体枪类，警用，对邪恶阵营伤害x1.25"
	global.wep_atk[i]=2700
	global.wep_long[i]=3
	global.wep_short[i]=1
	global.wep_move[i]=true
	global.wep_aim[i]=10
	global.wep_ct[i]=10
	global.wep_bullet[i]=10
	global.wep_timeline[i]=wep102_mauser1
	global.wep_hit_effect[i]=wef02_pxz
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	global.wep_place[i,2]=2
	//--------------------------------------------------
	i=103;
	global.wep_name[i]="破邪斩"
	global.wep_text[i]="钝器类，警用，对邪恶阵营伤害x1.25"
	global.wep_atk[i]=3100
	global.wep_long[i]=1
	global.wep_short[i]=1
	global.wep_move[i]=true
	global.wep_combat[i]=true
	global.wep_aim[i]=20
	global.wep_ct[i]=10
	global.wep_en[i]=15
	global.wep_timeline[i]=wep103_smite1
	global.wep_hit_effect[i]=wef02_pxz
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	global.wep_place[i,2]=2
	//--------------------------------------------------
	i=104;
	global.wep_name[i]="番茄连招"
	global.wep_text[i]="光束剑类，进阶招式，敌机气力-10"
	global.wep_atk[i]=3600
	global.wep_long[i]=2
	global.wep_short[i]=1
	global.wep_move[i]=true
	global.wep_combat[i]=true
	global.wep_beam[i]=true
	global.wep_aim[i]=20
	global.wep_ct[i]=10
	global.wep_en[i]=35
	global.wep_ql[i]=110
	global.wep_timeline[i]=wep104_tomato
	global.wep_hit_effect[i]=wef00_qldanmage
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	global.wep_place[i,2]=2
	//--------------------------------------------------
	i=105;
	global.wep_name[i]="幻视调律"
	global.wep_text[i]="光束枪类，心灵攻击"
	global.wep_atk[i]=2700
	global.wep_long[i]=5
	global.wep_short[i]=1
	global.wep_move[i]=true
	global.wep_beam[i]=true
	global.wep_aim[i]=10
	global.wep_ct[i]=10
	global.wep_bullet[i]=30
	global.wep_timeline[i]=wep105_eyelaser
	global.wep_hit_effect[i]=noone
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	global.wep_place[i,2]=1
	//--------------------------------------------------
	i=106;
	global.wep_name[i]="近眼花火"
	global.wep_text[i]="武术类，心灵攻击"
	global.wep_atk[i]=3000
	global.wep_long[i]=3
	global.wep_short[i]=1
	global.wep_move[i]=true
	global.wep_combat[i]=true
	global.wep_aim[i]=10
	global.wep_ct[i]=30
	global.wep_bullet[i]=4
	global.wep_timeline[i]=wep106_eyefire
	global.wep_hit_effect[i]=noone
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	global.wep_place[i,2]=1
	//--------------------------------------------------
	i=107;
	global.wep_name[i]="月符【月狂之锤】"
	global.wep_text[i]="武术类，心灵攻击"
	global.wep_atk[i]=3300
	global.wep_long[i]=2
	global.wep_short[i]=1
	global.wep_move[i]=true
	global.wep_combat[i]=true
	global.wep_aim[i]=25
	global.wep_ct[i]=0
	global.wep_en[i]=20
	global.wep_timeline[i]=wep107_lunahammer
	global.wep_hit_effect[i]=noone
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	global.wep_place[i,2]=1
	//--------------------------------------------------
	i=108;
	global.wep_name[i]="兔符【团子火箭炮】"
	global.wep_text[i]="实体爆弹类，心灵攻击"
	global.wep_atk[i]=3100
	global.wep_long[i]=7
	global.wep_short[i]=3
	global.wep_move[i]=false
	global.wep_combat[i]=false
	global.wep_aim[i]=5
	global.wep_ct[i]=0
	global.wep_en[i]=20
	global.wep_timeline[i]=wep108_dangobazooka
	global.wep_hit_effect[i]=noone
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	global.wep_place[i,2]=1
	//--------------------------------------------------
	i=110;
	global.wep_name[i]="进化【盖塔光束】"
	global.wep_text[i]="光束炮类，进阶招式"
	global.wep_atk[i]=3500
	global.wep_short[i]=1
	global.wep_long[i]=5
	global.wep_beam[i]=true
	global.wep_combat[i]=false//格斗武器
	global.wep_move[i]=false
	global.wep_aim[i]=15
	global.wep_ct[i]=20
	global.wep_ql[i]=115
	global.wep_en[i]=30
	global.wep_timeline[i]=wep110_getterbeam
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	global.wep_place[i,2]=2
	//--------------------------------------------------
	i=111;
	global.wep_name[i]="火箭飞拳？"
	global.wep_text[i]="浮游炮类"
	global.wep_atk[i]=2700
	global.wep_long[i]=4
	global.wep_short[i]=1
	global.wep_beam[i]=false
	global.wep_move[i]=true
	global.wep_aim[i]=15
	global.wep_ct[i]=15
	global.wep_bullet[i]=10
	global.wep_timeline[i]=wep111_rocket_punch
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	global.wep_place[i,2]=1
	global.wep_place[i,3]=4
	//--------------------------------------------------
	i=112;
	global.wep_name[i]="特装型无托机枪"//额外武器
	global.wep_text[i]="实体枪类"
	global.wep_atk[i]=2800
	global.wep_long[i]=5
	global.wep_combat[i]=false//格斗武器
	global.wep_move[i]=true
	global.wep_bullet[i]=10
	global.wep_aim[i]=20
	global.wep_ct[i]=25
	global.wep_timeline[i]=wep112_TR1machinegun
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	//--------------------------------------------------
	i=113;
	global.wep_name[i]="狙击枪·Kar999K"//额外武器
	global.wep_text[i]="光束枪类，古董"
	global.wep_atk[i]=3700
	global.wep_long[i]=8
	global.wep_short[i]=3
	global.wep_beam[i]=true
	global.wep_combat[i]=false//格斗武器
	global.wep_move[i]=false
	global.wep_bullet[i]=4
	global.wep_aim[i]=5
	global.wep_ct[i]=25
	global.wep_ql[i]=110
	global.wep_timeline[i]=wep113_TR1sniper
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	global.wep_place[i,2]=1
	//--------------------------------------------------
	i=114;
	global.wep_name[i]="幻视调律"
	global.wep_text[i]="光束枪类，心灵攻击"
	global.wep_atk[i]=2700
	global.wep_long[i]=5
	global.wep_short[i]=1
	global.wep_move[i]=true
	global.wep_beam[i]=true
	global.wep_aim[i]=10
	global.wep_ct[i]=10
	global.wep_bullet[i]=30
	global.wep_timeline[i]=wep114_handgun
	global.wep_hit_effect[i]=noone
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	global.wep_place[i,2]=1
	//--------------------------------------------------
	i=115;
	global.wep_name[i]="半灵出击"//文装
	global.wep_text[i]="爆弹类"
	global.wep_atk[i]=2500
	global.wep_long[i]=4
	global.wep_move[i]=true
	global.wep_aim[i]=25
	global.wep_bullet[i]=20//-1=无限
	global.wep_timeline[i]=wep115_hafspirit
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	global.wep_place[i,3]=4
	//--------------------------------------------------
	i=116;
	global.wep_name[i]="枪斗术"
	global.wep_text[i]="光束枪类，进阶招式"
	global.wep_atk[i]=3200
	global.wep_combat[i]=false//格斗武器
	global.wep_move[i]=true
	global.wep_long[i]=3
	global.wep_aim[i]=25
	global.wep_ct[i]=10
	global.wep_ql[i]=110
	global.wep_bullet[i]=4
	global.wep_timeline[i]=wep116_poland_combat1
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	//--------------------------------------------------
	i=117;
	global.wep_name[i]="光子力军刀"
	global.wep_text[i]="光束剑类"
	global.wep_atk[i]=2900
	global.wep_combat[i]=true//格斗武器
	global.wep_beam[i]=true
	global.wep_move[i]=true
	global.wep_aim[i]=15
	global.wep_ct[i]=10
	global.wep_en[i]=5
	global.wep_timeline[i]=wep117_mazinger_blade
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	global.wep_place[i,2]=1
	global.wep_place[i,3]=4
	//--------------------------------------------------
	i=118;
	global.wep_name[i]="创制火神炮"
	global.wep_text[i]="实弹类，CIWS"
	global.wep_atk[i]=2400
	global.wep_combat[i]=false//不是格斗武器
	global.wep_beam[i]=true
	global.wep_move[i]=true
	global.wep_long[i]=3
	global.wep_aim[i]=15
	global.wep_ct[i]=10
	global.wep_en[i]=5
	global.wep_timeline[i]=wep118_bulidciws
	//0=- 1=C 2=B 3=A 4=S
	//j=0:空 j=1:陆 j=2:水 j=3:宇
	global.wep_place[i,2]=1
	global.wep_place[i,3]=4
	//--------------------------------------------------
	global.wep_num=i+1



}
