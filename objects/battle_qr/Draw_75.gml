/// @description 绘制开启的战斗动画
// You can write your code in this editor
display_set_gui_size(1280,720)
var mx,my,vx,vy,ax,ay,flag,i,ah,ahm;
mx=device_mouse_x_to_gui(0)
my=device_mouse_y_to_gui(0)
if(ondrawing2&&battle_dh==true)
{
	if(keyboard_check(vk_space))room_speed=120
	else room_speed=60
	if(eff=1)shader_set(shd11_s2_heibai)
    draw_set_alpha(1)
    //draw_rectangle_colour(0,0,1280,720,c_aqua,c_aqua,c_dkgray,c_dkgray,false)
	var vx,vy,vw,vh,ax,ay,aw,ah,i;
	vw=1280
	vh=720
	/*
	if(surface_exists(battleground))
	{
		vx=battlecam_x-vw/2+vw*battlecam_blv/2
		vy=battlecam_y-vh/2+vh*battlecam_blv/2
		draw_surface_part_ext(battleground,vx,vy,vw/battlecam_blv,vh/battlecam_blv,0,0,battlecam_blv,battlecam_blv,c_white,1)
	}
	*/
	vw=1280
	vh=720
	display_set_gui_size(vw,vh)
	if(flag_UI==true)
    {
        if(flag_UI_alarm>0)
        {
            flag_UI_alarm-=8
        }
        else flag_UI_alarm=0
    }
    else
    {
        if(flag_UI_alarm<160)
        {
            flag_UI_alarm+=8
        }
        else flag_UI_alarm=160
    }
    //UI部分
    var lspr=hp_enc
    if(global.robo_magic[global.mrobo_id[mrid[1]]])lspr=hp_enc_m
    draw_background_ext(lspr,0,0-flag_UI_alarm,1,1,0,16777215,1)
    draw_sprite(global.robo_icon[global.mrobo_id[mrid[1]]],global.mrobo_team[mrid[1]],40,40-flag_UI_alarm)
    var lspr=hp_enc
    if(global.robo_magic[global.mrobo_id[mrid[0]]])lspr=hp_enc_m
    draw_background_ext(lspr,1280,0-flag_UI_alarm,-1,1,0,16777215,1)
    draw_sprite(global.robo_icon[global.mrobo_id[mrid[0]]],global.mrobo_team[mrid[0]],1240,40-flag_UI_alarm)
    vx=100
    ax=80
    bx=100
    draw_set_font(global.font_m)
    draw_set_halign(fa_left)
    draw_set_valign(fa_top)
    for(i=0;i<2;i++)
    {
        var j;
        j=-1
        if(jd==1||jd==5)
        {
            j=1
            if(jd==5)j=0
            if(upside_down)j=!j
        }
        ah=global.mrobo_hp[mrid[!i]]
        if(j==!i)
        {
            var ldmg;
            ldmg=dmg
            if(global.mrobo_hp[mrid[!i]]<ldmg)ldmg=global.mrobo_hp[mrid[!i]]
            ah-=ldmg*playdh_nowdmg
            if(playdh_nowdmg<playdh_mbdmg)playdh_nowdmg+=0.1
            else playdh_nowdmg=playdh_mbdmg  
            ah=floor(ah)          
        }
        ahm=global.mrobo_hpm[mrid[!i]]
        draw_background_part_ext(hpc,0,0,456*ah/ahm,22,ax,32-flag_UI_alarm,1-i*2,1,16777215,1)
        qtext=string(ah)+" / "+string(ahm)
        draw_set_colour(c_black)
        draw_text(bx,12-flag_UI_alarm+2,string_hash_to_newline(qtext))
        draw_set_colour(c_white)
        draw_text(bx,12-flag_UI_alarm,string_hash_to_newline(qtext))
    
        ah=global.mrobo_en[mrid[!i]]
        ahm=global.mrobo_enm[mrid[!i]]
        draw_background_part_ext(enc,0,0,320*ah/ahm,27,ax+16-i*32,96-flag_UI_alarm,1-i*2,1,16777215,1)
        qtext=string(ah)+" / "+string(ahm)
        draw_set_colour(c_black)
        draw_text(bx,56-flag_UI_alarm+2,string_hash_to_newline(qtext))
        draw_set_colour(c_white)
        draw_text(bx,56-flag_UI_alarm,string_hash_to_newline(qtext))
        
        vx=772
        ax=1200
        bx=1180
        draw_set_halign(fa_right)
    }
    vx=16
    vy=512+flag_UI_alarm*2
    vw=192
    vh=192
    draw_background(gui_DHK_bk_battle,0,flag_UI_alarm*2)
    for(j=0;j<2;j++)
    {
        pid=global.mrobo_pliot[mrid[j]]
        if(pid>=0&&actors_dhk_head==global.pliot_head[pid])
            actors_dhk_head=global.mrobo_pliot_c_head[mrid[j]]
    }
    if(sprite_exists(actors_dhk_head))
    {
        draw_sprite(actors_dhk_head,actors_dhk_face,vx,vy)
    }
    else 
        draw_sprite(po_noname,0,vx,vy)
    vx=234
    vw=1040
    vy=544
    qtext=actors_dhk_text
    var pos=string_pos("：",qtext)
    for(j=0;j<2;j++)
    {
        pid=global.mrobo_pliot[mrid[j]]
        if(string_copy(qtext,1,pos-1)==global.pliot_name[pid])
        {
            actors_dhk_text=global.mrobo_pliot_c_name[mrid[j]]+string_copy(qtext,pos,9999)
        }
    }
	#region 加上花括号
	var pos=string_pos("#",qtext)
    qtext=string_copy(qtext,1,pos)+"【"+string_copy(qtext,pos+1,9999)+"】"
	#endregion
    draw_text_dhk_colour(qtext,vx+8,vy+8,vw-40)
    //绘制伤害
    if(nowdmg_ala>0)
    {
        qtext=string(nowdmg)
        vx=640
        vy=440
        if(nowdmg_ala>85)vy-=(nowdmg_ala-85)*16
        if(nowdmg_ala<5)vy-=(5-nowdmg_ala)*16
        draw_set_font(global.font_dmg)
        draw_set_halign(fa_center)
        draw_set_valign(fa_middle)
        draw_text_colour(vx,vy,string_hash_to_newline(qtext),c_orange,c_orange,c_red,c_red,1)
        nowdmg_ala-=1
    }
    //绘制特别信息
    vw=512
    vh=32
    vy=512-vh
    for(i=0;i<16;i++)
    {
        if(info_ala[i]>=0)
        {
            vx=16
            if(info_ala[i]>55)vx-=(info_ala[i]-55)*vw
            if(info_ala[i]<5)vx-=(5-info_ala[i])*vw
            draw_kuang(vx,vy,vx+vw,vy+vh,make_colour_rgb(0,128+irandom(4)-2,128+irandom(4)-2))
            draw_text_dhk_colour("[\\xys:100]"+info_qtext[i],vx+8,vy+2,0)
            info_ala[i]-=1
            vy-=vh-4
        }
    }
    if(jd==8)
    {
        with(attacking_drawer)instance_destroy()
        with(DND_player)inchoose=false
        if(mode==0){global.mrobo_E[mrid[0]]=true}
		instance_destroy()
		
    }
    shader_reset()
	
	/*var spd=16
	if(keyboard_check(ord("W")))battlecam_y-=spd
	if(keyboard_check(ord("S")))battlecam_y+=spd
	if(keyboard_check(ord("A")))battlecam_x-=spd
	if(keyboard_check(ord("D")))battlecam_x+=spd
	if(keyboard_check(ord("Q")))battlecam_blv-=0.01
	if(keyboard_check(ord("R")))battlecam_blv+=0.01
	if(battlecam_blv>3)battlecam_blv=3
	if(battlecam_blv<0.5)battlecam_blv=0.5

	if(battlecam_x>ground_width-vw)battlecam_x=ground_width-vw
	if(battlecam_x<0)battlecam_x=0
	if(battlecam_y>ground_height-vh)battlecam_y=ground_height-vh
	if(battlecam_y<0)battlecam_y=0

	draw_set_color(c_red)*/
}
