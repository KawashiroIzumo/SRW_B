/// @description save_list_read()
function save_list_read() {
	var i,fin,flocate;
	for(i=0;i<9;i++)
	{
	    flocate="media\\hentaiCG_0"+string(i)+"_con.txt"
	    if(file_exists(flocate))
	    {
	        fin=file_text_open_read(flocate)
	        save_hero[i]=file_text_read_real(fin)
	        file_text_readln(fin)
	        save_stage[i]=file_text_read_real(fin)
	        file_text_readln(fin)
	        save_money[i]=file_text_read_real(fin)
	        file_text_readln(fin)
	        save_enabled[i]=true
	        file_text_close(fin)
	        file_text_close(fin)
	    }
	    else
	    {
	        save_hero[i]=-1
	        save_stage[i]=-1
	        save_money[i]=0
	        save_enabled[i]=false
	    }
	}



}
