/// @description draw_kuang(x1,y1,x2,y2,color)
/// @param x1
/// @param y1
/// @param x2
/// @param y2
/// @param color
function draw_kuang(argument0, argument1, argument2, argument3, argument4) {
	var colort,ips,alphat,aia,i,j,colorb;
	colort=draw_get_colour()
	alphat=draw_get_alpha()
	colorb=make_colour_hsv(colour_get_hue(argument4),colour_get_saturation(argument4),floor(colour_get_value(argument4)*0.75))
	draw_rectangle_colour(argument0,argument1,argument2,argument3,argument4,argument4,colorb,colorb,0)
	draw_set_colour(colorb)
	for(i=argument0;i+8<=argument2;i+=8)
	{
	    draw_line(i,argument1,i,argument3)
	}
	for(i=argument1;i+8<=argument3;i+=8)
	{
	    draw_line(argument0,i,argument2,i)
	}

	draw_rectangle_colour(argument0,argument1,argument2,argument3,c_white,c_white,c_ltgray,c_ltgray,1)
	draw_rectangle_colour(argument0+1,argument1+1,argument2-1,argument3-1,c_ltgray,c_ltgray,c_gray,c_gray,1)
	draw_set_colour(colort)
	/*
	var x1=argument0,x2=argument2,y1=argument1,y2=argument3;
	var sbk=dg1bak,sframe=dg1frame;
	draw_sprite_ext(sbk,0,x1,y1,1,1,0,c_white,alphat*0.7)
	draw_set_blend_mode(bm_add)
	draw_sprite_ext(sbk,0,x1,y1,1,1,0,argument4,alphat)
	draw_set_blend_mode(bm_normal)
	draw_sprite_ext(sframe,0,x1,y1,1,1,0,c_white,alphat)
	var spw=sprite_get_width(sbk);
	for(i=1;i<floor((x2-x1-spw)/spw);i++)
	{
	    //show_message("i="+string(i)+"#floor((x2-x1-spw)/spw)="+string(floor((x2-x1-spw)/spw)))
	    draw_sprite_ext(sbk,1,x1+i*spw,y1,1,1,0,c_white,alphat*0.7)
	    draw_set_blend_mode(bm_add)
	    draw_sprite_ext(sbk,1,x1+i*spw,y1,1,1,0,argument4,alphat)
	    draw_set_blend_mode(bm_normal)
	    draw_sprite_ext(sframe,1,x1+i*spw,y1,1,1,0,c_white,alphat)
	}
	if((x2-x1)mod spw>0)
	{
	    draw_sprite_part_ext(sbk,1,0,0,(x2-x1)mod spw,spw,x1+i*spw,y1,1,1,c_white,alphat*0.7)
	    draw_set_blend_mode(bm_add)
	    draw_sprite_part_ext(sbk,1,0,0,(x2-x1)mod spw,spw,x1+i*spw,y1,1,1,argument4,alphat)
	    draw_set_blend_mode(bm_normal)
	    draw_sprite_part_ext(sframe,1,0,0,(x2-x1)mod spw,spw,x1+i*spw,y1,1,1,c_white,alphat)
	}
	draw_sprite_ext(sbk,2,x2-spw,y1,1,1,0,c_white,alphat*0.7)
	draw_set_blend_mode(bm_add)
	draw_sprite_ext(sbk,2,x2-spw,y1,1,1,0,argument4,alphat)
	draw_set_blend_mode(bm_normal)
	draw_sprite_ext(sframe,2,x2-spw,y1,1,1,0,c_white,alphat)

	for(j=1;j<floor((y2-y1-spw)/spw);j++)
	{
	    draw_sprite_ext(sbk,3,x1,y1+j*spw,1,1,0,c_white,alphat*0.7)
	    draw_set_blend_mode(bm_add)
	    draw_sprite_ext(sbk,3,x1,y1+j*spw,1,1,0,argument4,alphat)
	    draw_set_blend_mode(bm_normal)
	    draw_sprite_ext(sframe,3,x1,y1+j*spw,1,1,0,c_white,alphat)
	    for(i=1;i<floor((x2-x1-spw)/spw);i++)
	    {
	        draw_sprite_ext(sbk,4,x1+i*spw,y1+j*spw,1,1,0,c_white,alphat*0.7)
	        draw_set_blend_mode(bm_add)
	        draw_sprite_ext(sbk,4,x1+i*spw,y1+j*spw,1,1,0,argument4,alphat)
	        draw_set_blend_mode(bm_normal)
	    }
	    if((x2-x1)mod spw>0)
	    {
	        draw_sprite_part_ext(sbk,4,0,0,(x2-x1)mod spw,spw,x1+i*spw,y1+j*spw,1,1,c_white,alphat*0.7)
	        draw_set_blend_mode(bm_add)
	        draw_sprite_part_ext(sbk,4,0,0,(x2-x1)mod spw,spw,x1+i*spw,y1+j*spw,1,1,argument4,alphat)
	        draw_set_blend_mode(bm_normal)
	    }
	    draw_sprite_ext(sbk,5,x2-spw,y1+j*spw,1,1,0,c_white,alphat*0.7)
	    draw_set_blend_mode(bm_add)
	    draw_sprite_ext(sbk,5,x2-spw,y1+j*spw,1,1,0,argument4,alphat)
	    draw_set_blend_mode(bm_normal)
	    draw_sprite_ext(sframe,5,x2-spw,y1+j*spw,1,1,0,c_white,alphat)
	}

	if((y2-y1)mod spw>0)
	{
	    draw_sprite_part_ext(sbk,3,0,0,spw,(y2-y1)mod spw,x1,y1+j*spw,1,1,c_white,alphat*0.7)
	    draw_set_blend_mode(bm_add)
	    draw_sprite_part_ext(sbk,3,0,0,spw,(y2-y1)mod spw,x1,y1+j*spw,1,1,argument4,alphat)
	    draw_set_blend_mode(bm_normal)
	    draw_sprite_part_ext(sframe,3,0,0,spw,(y2-y1)mod spw,x1,y1+j*spw,1,1,c_white,alphat)
	    for(i=1;i<floor((x2-x1-spw)/spw);i++)
	    {
	        draw_sprite_part_ext(sbk,4,0,0,spw,(y2-y1)mod spw,x1+i*spw,y1+j*spw,1,1,c_white,alphat*0.7)
	        draw_set_blend_mode(bm_add)
	        draw_sprite_part_ext(sbk,4,0,0,spw,(y2-y1)mod spw,x1+i*spw,y1+j*spw,1,1,argument4,alphat)
	        draw_set_blend_mode(bm_normal)
	    }
	    if((x2-x1)mod spw>0)
	    {
	        draw_sprite_part_ext(sbk,4,0,0,(x2-x1)mod spw,(y2-y1)mod spw,x1+i*spw,y1+j*spw,1,1,c_white,alphat*0.7)
	        draw_set_blend_mode(bm_add)
	        draw_sprite_part_ext(sbk,4,0,0,(x2-x1)mod spw,(y2-y1)mod spw,x1+i*spw,y1+j*spw,1,1,argument4,alphat)
	        draw_set_blend_mode(bm_normal)
	    }
	    draw_sprite_part_ext(sbk,5,0,0,spw,(y2-y1)mod spw,x2-spw,y1+j*spw,1,1,c_white,alphat*0.7)
	    draw_set_blend_mode(bm_add)
	    draw_sprite_part_ext(sbk,5,0,0,spw,(y2-y1)mod spw,x2-spw,y1+j*spw,1,1,argument4,alphat)
	    draw_set_blend_mode(bm_normal)
	    draw_sprite_part_ext(sframe,5,0,0,spw,(y2-y1)mod spw,x2-spw,y1+j*spw,1,1,c_white,alphat)
	}

	draw_sprite_ext(sbk,6,x1,y2-spw,1,1,0,c_white,alphat*0.7)
	draw_set_blend_mode(bm_add)
	draw_sprite_ext(sbk,6,x1,y2-spw,1,1,0,argument4,alphat)
	draw_set_blend_mode(bm_normal)
	draw_sprite_ext(sframe,6,x1,y2-spw,1,1,0,c_white,alphat)
	for(i=1;i<floor((x2-x1-spw)/spw);i++)
	{
	    draw_sprite_ext(sbk,7,x1+i*spw,y2-spw,1,1,0,c_white,alphat*0.7)
	    draw_set_blend_mode(bm_add)
	    draw_sprite_ext(sbk,7,x1+i*spw,y2-spw,1,1,0,argument4,alphat)
	    draw_set_blend_mode(bm_normal)
	    draw_sprite_ext(sframe,7,x1+i*spw,y2-spw,1,1,0,c_white,alphat)
	}
	if((x2-x1)mod spw>0)
	{
	    draw_sprite_part_ext(sbk,7,0,0,(x2-x1)mod spw,spw,x1+i*spw,y2-spw,1,1,c_white,alphat*0.7)
	    draw_set_blend_mode(bm_add)
	    draw_sprite_part_ext(sbk,7,0,0,(x2-x1)mod spw,spw,x1+i*spw,y2-spw,1,1,argument4,alphat)
	    draw_set_blend_mode(bm_normal)
	    draw_sprite_part_ext(sframe,7,0,0,(x2-x1)mod spw,spw,x1+i*spw,y2-spw,1,1,c_white,alphat)
	}
	draw_sprite_ext(sbk,8,x2-spw,y2-spw,1,1,0,c_white,alphat*0.7)
	draw_set_blend_mode(bm_add)
	draw_sprite_ext(sbk,8,x2-spw,y2-spw,1,1,0,argument4,alphat)
	draw_set_blend_mode(bm_normal)
	draw_sprite_ext(sframe,8,x2-spw,y2-spw,1,1,0,c_white,alphat)
	draw_set_colour(colort)

























	/*
	var colort,ips,alphat,aia;
	colort=draw_get_colour()
	alphat=draw_get_alpha()
	if(argument4!=c_black)
	draw_set_colour(argument4)
	draw_set_alpha(0.75*alphat)
	draw_rectangle(argument0,argument1,argument2,argument3,false)
	//鎴戞棩濂藉嚑鎶婄偒閰?
	draw_set_alpha(alphat)
	draw_primitive_begin(pr_trianglestrip)
	draw_vertex_colour(argument0,argument3,argument4,alphat);
	for(aia=argument0;aia<=argument2;aia+=4)
	{
	    draw_vertex_colour(aia,argument1+irandom(argument3-argument1)/8+(argument3-argument1)/2,argument4,0);
	    draw_vertex_colour(aia,argument3,argument4,alphat);
	}
	draw_vertex_colour(argument2,argument3,argument4,alphat);
	draw_primitive_end()


	//缁樺埗杈圭嚎
	draw_set_color(make_colour_rgb(200,200,200))
	draw_line_width(argument0,argument1,argument2,argument1,2)

	draw_set_color(make_colour_rgb(200,200,200))
	draw_line_width(argument0,argument3,argument2,argument3,2)

	draw_set_color(make_colour_rgb(200,200,200))
	draw_line_width(argument0,argument1,argument0,argument3,2)

	draw_set_color(make_colour_rgb(200,200,200))
	draw_line_width(argument2,argument1,argument2,argument3,2)

	//缁樺埗闅忔満婊″ぉ鏄?
	for(ips=0;ips<64;ips++)
	{
	    draw_point_colour(irandom_range(argument0,argument2),irandom_range(argument1,argument3),c_gray)
	}

	//閲嶇疆棰滆壊璁剧疆
	draw_set_colour(colort)


/* end draw_kuang */
}
