///@description init_cofing()
function init_cofing() {
	var fin,flocate,ijs
	global.firstgame=false
	randomize()
	flocate=working_directory+"\\cofing.json"
	if(file_exists(flocate))//已经创建
	{
		ijs=""
		fin=file_text_open_read(flocate)
		while(!file_text_eof(fin))
		{
			ijs+=file_text_read_string(fin)
			file_text_readln(fin)
		}
		//show_message("ijs="+ijs)
		file_text_close(fin)
		global.cofing=json_decode(ijs)
	}
	else 
	{
		global.cofing=ds_map_create()//没有则设置空白
		global.firstgame=1
	}

	//开始定义设置
	if(!ds_map_exists(global.cofing,"languege"))
		global.cofing[? "languege"]=-1
	if(!ds_map_exists(global.cofing,"SE_vol"))
		global.cofing[? "SE_vol"]=100

	//对文件进行覆写
	fin=file_text_open_write(flocate)
	file_text_write_string(fin,json_encode(global.cofing))
	file_text_close(fin)


}
