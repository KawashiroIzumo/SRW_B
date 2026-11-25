/// @description 绘制关闭的战斗动画
var mx,my,vx,vy,ax,ay,flag,i;
mx=window_mouse_get_x()
my=window_mouse_get_y()
if(ondrawing&&xs_dig)
{
    if(jd==2)
    {
        i=0
        if(jd==6)i=1
        ax=global.mrobo_x[mrid]*64
        ay=global.mrobo_y[mrid]*64
        if(avl_name!="")
        {
			
            vx=ax-64
            vy=ay-32
            vw=384
            vh=32
            draw_kuang(vx,vy,vx+vw,vy+vh,make_colour_rgb(0,128,128))
            qtext="[\\xys:75]"+avl_name
            draw_text_dhk_colour(qtext,vx+8,vy+2,0)
        }
        qtext=" "
        vx=ax-64
        vy=ay
        vw=384
        vh=64
        if(mode==0)
        {
            ah=global.mrobo_hp[mrid]-floor(dmg*alarm[2]/60)
            ahm=global.mrobo_hpm[mrid]
        }
        else if(mode==1)
        {
            ah=global.mrobo_en[mrid]-floor(dmg*alarm[2]/60)
            ahm=global.mrobo_enm[mrid]
        }
        else if(mode==2)
        {
            ah=global.mrobo_pliot_sp[mrid]-floor(dmg*alarm[2]/60)
            ahm=global.pliot_sp[global.mrobo_pliot[mrid]]
        }
        draw_kuang(vx,vy,vx+vw,vy+vh,make_colour_rgb(0,128,128))
        if(alarm[2]>=60)
        {
            qtext="[\\xys:150]"
            if(dmg>=0)qtext+="+"
            qtext+=string(dmg)
        }
        else
        {
            if(mode==0)qtext="HP:"
            else if(mode==1) 
            {
                rid=global.mrobo_id[mrid]
                qtext="EN:"
                if(global.robo_magic[rid])qtext="MP:"
            }
            else if(mode==2) qtext="SP:"
            qtext+=string(ah)+" / "+string(ahm)
            draw_rectangle_colour(vx,vy+48,vx+vw,vy+vh,c_dkgray,c_dkgray,c_black,c_black,false)
            draw_rectangle_colour(vx,vy+48,vx+vw*ah/ahm,vy+vh,65280,65280,c_green,c_green,false)
        }
        draw_text_dhk_colour(qtext,vx+8,vy+4,0)
    }
    if(jd==3)
    {
        i=0
        if(jd==7)i=1
        ax=global.mrobo_x[mrid]*64
        ay=global.mrobo_y[mrid]*64
        vx=ax-64
        vy=ay
        vw=384
        vh=64
        if(mode==0)
        {
            ah=global.mrobo_hp[mrid]
            ahm=global.mrobo_hpm[mrid]
        }
        else if(mode==1)
        {
            ah=global.mrobo_en[mrid]
            ahm=global.mrobo_enm[mrid]
        }
        else if(mode==2)
        {
            ah=global.mrobo_pliot_sp[mrid]
            ahm=global.pliot_sp[global.mrobo_pliot[mrid]]
        }
        draw_kuang(vx,vy,vx+vw,vy+vh,make_colour_rgb(0,128,128))
        if(mode==0)qtext="HP:"
        else if(mode==1) 
        {
            rid=global.mrobo_id[mrid]
            qtext="EN:"
            if(global.robo_magic[rid])qtext="MP:"
        }
        else if(mode==2) qtext="SP:"
        qtext+=string(ah)+" / "+string(ahm)
        draw_rectangle_colour(vx,vy+48,vx+vw,vy+vh,c_dkgray,c_dkgray,c_black,c_black,false)
        draw_rectangle_colour(vx,vy+48,vx+vw*ah/ahm,vy+vh,65280,65280,c_green,c_green,false)
        draw_text_dhk_colour(qtext,vx+8,vy+4,0)
    } 
    if(jd==4)
    {
        with(attacking_drawer)instance_destroy()
        with(DND_player)inchoose=false
        instance_destroy()
    }
}
if(ondrawing&&xs_fx)
{
    if(jd==2)
    {
        if(sprite_exists(xs_fx_ind))
        {
            ax=global.mrobo_x[mrid]*64+96
            ay=global.mrobo_y[mrid]*64+96
            draw_sprite(xs_fx_ind,120-alarm[2],ax,ay)
        }
    }
}

