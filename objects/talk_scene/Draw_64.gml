display_set_gui_size(1280,720)
if(type==0)
{
    draw_set_colour(0)
    draw_rectangle(0,0,1280,720,0)
    if(surface_exists(scene_surface))
    {
        draw_surface(scene_surface,eff_shock-irandom(eff_shock*2),eff_shock-irandom(eff_shock*2))
    }
    if(eff_shock>0)eff_shock-=1
}

