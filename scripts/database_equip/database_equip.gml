/// @description database_equip()
function database_equip() {
	//--------=-----=-------=-----=--=-=---=-----=-------
	for(i=0;i<512;i++)
	{
	    global.equip_name[i]="肥宅吊坠"
	    global.equip_text[i]="noone"
	    global.equip_value[i]=1000
	    global.equip_hp[i]=0
	    global.equip_en[i]=0
	    global.equip_ac[i]=0
	    global.equip_ab[i]=0
	    global.equip_def[i]=0
	    global.equip_long[i]=0
	    global.equip_mov[i]=0
	    global.equip_class[i]=0
	    for(j=0;j<4;j++)
	    {
	        global.equip_place[i,j]=0
	        global.equip_place_go[i,j]=0
	    }
	    global.equip_use_type[i]=0
	    //0=无法使用，1=一回合一次无消耗，2=一场战斗限一次无消耗，3=消耗
	    global.equip_use_exe[i]=noone
	    global.equip_use_ignore[i]=spiritbool_yesmen
	    global.equip_num[i]=0
	}
	//--------=-----=-------=-----=--=-=---=-----=-------
	i=0
	    global.equip_name[i]="田吕 溜缝胶"
	    global.equip_text[i]=@"通过溜缝胶处理过的机体全身严丝合缝，气动性能较好。
    #使得机体机动性+5"
	    global.equip_value[i]=50
	    global.equip_ac[i]=5
	//--------=-----=-------=-----=--=-=---=-----=-------
	i=1
	    global.equip_name[i]="匠或 消光漆"
	    global.equip_text[i]=@"喷过消光漆的机体与背景融为一体，难以被命中。
    #使得机体机动性+10"
	    global.equip_value[i]=100
	    global.equip_ac[i]=10
	//--------=-----=-------=-----=--=-=---=-----=-------
	i=2
	    global.equip_name[i]="摸神 通用关节球"
	    global.equip_text[i]=@"在机体不能动的地方施加通用关节，可以从根本上提升机体的可动。
    #使得机体机动性+20"
	    global.equip_value[i]=300
	    global.equip_ac[i]=20
	//--------=-----=-------=-----=--=-=---=-----=-------
	i=3
	    global.equip_name[i]="秘制小憨包"
	    global.equip_text[i]=@"这显然是某种被糟蹋的食物，摆在动力炉附近的话居然能够在某种位置的效果下提升机体的运动能力，不得不说真是黑科技。
    #使得机体机动性+5，移动力+1"
	    global.equip_value[i]=50
	    global.equip_ac[i]=5
	    global.equip_mov[i]=1
	//--------=-----=-------=-----=--=-=---=-----=-------
	i=6
	    global.equip_name[i]="大斑 联邦盾配件包"
	    global.equip_text[i]=@"这些个盾牌的实战性能令人担忧，即便如此，有个东西挡一下总比没有好。
    #装甲+100，HP+500"
	    global.equip_value[i]=50
	    global.equip_hp[i]=500
	    global.equip_def[i]=100
	    global.equip_class[i]=1
	//--------=-----=-------=-----=--=-=---=-----=-------
	i=7
	    global.equip_name[i]="龙套子 ABC披风"
	    global.equip_text[i]=@"能够有效补充机体帅气程度的披风。当机师对机体的外观非常不满的时候，研究员们就会在机体上安装这样的披风。
    #装甲+150，HP+800"
	    global.equip_value[i]=100
	    global.equip_hp[i]=800
	    global.equip_def[i]=150
	    global.equip_class[i]=1
	//--------=-----=-------=-----=--=-=---=-----=-------
	i=8
	    global.equip_name[i]="笨呆 超合金Z补件"
	    global.equip_text[i]=@"价值连城的合金，在黑市里面有价无市。如果拿去卖了，我们的财政就肯定没有问题了，为什么上面的大人物就不懂呢？——联邦财政员
    #装甲+200，HP+1000"
	    global.equip_value[i]=300
	    global.equip_hp[i]=1000
	    global.equip_def[i]=200
	    global.equip_class[i]=1
	//--------=-----=-------=-----=--=-=---=-----=-------
	i=9
	    global.equip_name[i]="四倍镜"
	    global.equip_text[i]=@"红巾野犬队同款的前取景器，为您打造出高精度的“视觉”
    #除射程1的武器之外，所有武器的射程+1"
	    global.equip_value[i]=100
	    global.equip_long[i]=1
	    global.equip_class[i]=3
	//--------=-----=-------=-----=--=-=---=-----=-------
	i=10
	    global.equip_name[i]="八倍镜"
	    global.equip_text[i]=@"茂名战狼的爱用品。当年，刘培茄中校得到它之后就经常找身边的俄国朋友讨狙来用
    #朋友，发把狙（zhu）
    #除射程1的武器之外，所有武器的射程+2"
	    global.equip_value[i]=300
	    global.equip_long[i]=2
	    global.equip_class[i]=3
	//--------=-----=-------=-----=--=-=---=-----=-------
	global.equip_sum=i+1



}
