/// @description draw_text_dhk_colour(文字,x,y,宽度)
/// @param 文字
/// @param x
/// @param y
/// @param 宽度
function draw_text_dhk_colour(argument0, argument1, argument2, argument3) {
	var texts,ssr,commad,i,j,nox,noy,ax,ay,by,xs,ys,ag,ymax,tc,cols,al,colsp,textp,em,lockxs,lockys,lal,nowshock;
	texts=argument0
	texts=string_replace_all(texts,"鬼人正邪","[\\ag:180]鬼人正邪[\\ag:0]")
	texts=string_replace_all(texts,"周锦华","[\\c:"+string(make_colour_rgb(205,133,63))+"]周锦华[\\c:16777215]")
	ssr=string_length(texts)
	ax=argument1
	ay=argument2
	by=0
	nox=0;
	noy=0;
	nowshock=false;
	xs=1
	ys=1
	ymax=.1
	ag=0
	al=1
	textp=1
	lal=draw_get_alpha()
	em=-1
	lockxs=1
	lockys=1
	/*
	if(string_width("哇")<25)textp=0.8
	if(string_width("哇")<19)textp=0.6
	*/
	colsp=draw_get_colour()
	draw_set_colour(c_white)
	cols=draw_get_colour()
	commad="fuck"
	//draw_set_font(yahei)
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_set_alpha(1)
	draw_set_blend_mode(bm_normal)
	for(i=1;i<=ssr;i+=1)//指令识别部分
	{
	    cols=draw_get_colour()
	    if(string_copy(texts,i,1)=="[")
	    {
	        for(j=i;j<ssr;j+=1)
	        {
	            if(string_copy(texts,j,1)=="]")
	            {
	                if(string_copy(texts,i,5)=="[\\c:d")
	                {
	                    commad=string_copy(texts,i,j-i+1)
	                    var lsc=real(string_digits(commad))
	                    if(lsc==0)draw_set_color(c_gray)
	                    else if(lsc==1)draw_set_color(make_colour_rgb(255,64,64))
	                    else if(lsc==2)draw_set_color(make_colour_rgb(192,128,64))
	                    else if(lsc==3)draw_set_color(make_colour_rgb(255,255,64))
	                    else if(lsc==4)draw_set_color(make_colour_rgb(64,255,64))
	                    else if(lsc==5)draw_set_color(make_colour_rgb(64,255,255))
	                    else if(lsc==6)draw_set_color(make_colour_rgb(64,64,255))
	                    else if(lsc==7)draw_set_color(make_colour_rgb(255,64,255))
	                    else if(lsc==8)draw_set_color(make_colour_rgb(255,255,255))
	                    else draw_set_color(make_colour_rgb(0,0,0))
	                }  
	                else if(string_copy(texts,i,4)=="[\\c:")
	                {
	                    commad=string_copy(texts,i,j-i+1)
	                    if(real(string_digits(commad))>16777215)draw_set_color(colsp)
	                    else
	                        draw_set_color(real(string_digits(commad)))
	                }  
	                else if(string_copy(texts,i,5)=="[\\xs:")
	                {
	                    commad=string_copy(texts,i,j-i+1)
	                    xs=real(string_digits(commad))/100
	                } 
	                else if(string_copy(texts,i,5)=="[\\ys:")
	                {
	                    commad=string_copy(texts,i,j-i+1)
	                    ys=real(string_digits(commad))/100
	                }
	                else if(string_copy(texts,i,6)=="[\\xys:")
	                {
	                    commad=string_copy(texts,i,j-i+1)
	                    xs=real(string_digits(commad))/100
	                    ys=real(string_digits(commad))/100
	                }
	                else if(string_copy(texts,i,6)=="[\\lxs:")
	                {
	                    commad=string_copy(texts,i,j-i+1)
	                    lockxs=real(string_digits(commad))/100
	                } 
	                else if(string_copy(texts,i,6)=="[\\lys:")
	                {
	                    commad=string_copy(texts,i,j-i+1)
	                    lockys=real(string_digits(commad))/100
	                }
	                else if(string_copy(texts,i,7)=="[\\lxys:")
	                {
	                    commad=string_copy(texts,i,j-i+1)
	                    lockxs=real(string_digits(commad))/100
	                    lockys=real(string_digits(commad))/100
	                }
	                else if(string_copy(texts,i,5)=="[\\ag:")
	                {
	                    commad=string_copy(texts,i,j-i+1)
	                    ag=real(string_digits(commad))
	                }
	                else if(string_copy(texts,i,5)=="[\\al:")
	                {
	                    commad=string_copy(texts,i,j-i+1)
	                    al=real(string_digits(commad))/100
	                }
	                else if(string_copy(texts,i,8)=="[\\shock:")
	                {
	                    commad=string_copy(texts,i,j-i+1)
	                    nowshock=real(string_digits(commad))
	                }
	                else if(string_copy(texts,i,5)=="[\\em:")
	                {
	                    commad=string_copy(texts,i,j-i+1)
	                    em=real(string_digits(commad))/100
	                }
	                break;
	            }
	        }
	        i=j;
	        continue;
	    }
	    /*
	    else if(ord(string_copy(texts,i,1))<127)
	    {
	        draw_text_transformed(ax+nox+16*xs,ay+noy+16*ys,string_copy(texts,i,1),xs,ys,ag)
	        nox+=string_width(string_copy(texts,i,1))*xs
	        if(ys>ymax)ymax=ys
	        if(argument3>0&&nox>=argument3-16)
	        {
	            nox=0
	            noy+=24*ymax
	            ymax=1
	        }
	    }*/
	    else 
	    {
	        //全汉字识别部分
	        qord=ord(string_copy(texts,i,1))
	        draw_set_font(global.font_m)
	        xs*=textp
	        ys*=textp
	        var px;
	        px=ax+nox+16*xs*lockxs+2
	        if(qord<=1024)
			{
				if(qord>=ord("0")&&qord<=ord("9"))
				{
					qord=qord-ord("0")+ord("０")
				}
				else if(qord>=ord("A")&&qord<=ord("Z"))
				{
					qord=qord-ord("A")+ord("Ａ")
				}
				else if(qord>=ord("a")&&qord<=ord("z"))
				{
					qord=qord-ord("a")+ord("ａ")
				}
				else if(qord==ord("."))
				{
					qord=ord("．")
				}
				else
				{
					px-=6*xs*lockxs
				}
			}
	        by=ay+noy+16*ys
	        if(nowshock)by+=(2-irandom(4))*ys
	        if(string_copy(texts,i,1)!="#")
	        {
	            if(cols!=c_black)
	                draw_text_transformed_colour(px,by+1,chr(qord),xs*lockxs,ys*lockys,ag,c_black,c_black,c_black,c_black,al*lal)
	            draw_text_transformed_colour(px,by,chr(qord),xs*lockxs,ys*lockys,ag,cols,cols,c_gray,c_gray,al*lal)
	        }
	        nox+=24*xs*lockxs+4*xs*lockxs
	        if(qord<=1024)nox-=6*xs*lockxs
	        if(ys>ymax)ymax=ys*lockys
	        if((argument3>0&&nox>=argument3-24*xs+4*xs)||string_copy(texts,i,1)=="#")
	        {
	            nox=0
	            noy+=36*ymax
	            ymax=.1
	        }
	        xs/=textp
	        ys/=textp
	    }
	}
	draw_set_color(colsp)
	draw_set_alpha(lal)



}
