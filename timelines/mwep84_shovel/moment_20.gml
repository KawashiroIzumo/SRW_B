/// @description 对话内容
var lsa,pid;
pid=global.mrobo_pliot[mrid]
qname=global.mrobo_pliot_c_name[mrid]
qtext=global.pliot_wep_text[pid,56]
qhead=global.mrobo_pliot_c_head[mrid]
create_dhk(qname,qtext,qhead)
view_do_center_puz(0,global.mrobo_x[mrid],global.mrobo_y[mrid])

