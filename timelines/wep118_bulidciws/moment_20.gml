var i,rid;//定义临时变量
i=actors_now//获得当前激活的顺序编号
rid=global.mrobo_id[mrid[i]];
pid=global.mrobo_pliot[mrid[i]]//通过顺序编号获得机体编号，并获得机师编号
var k;
k=0//定义临时变量
adhk_set(pid,k,id)//激活pid机师的第k号对话，在id物体上
ls_spr1=global.robo_spr_spine[rid]