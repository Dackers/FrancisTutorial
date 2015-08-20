if instance_exists(obj_Player)
{
    with obj_Player
    {
        //Create the save file
        SaveFile = file_text_open_write("Progress.sav")
        
        //Write a line of text to it
        file_text_write_string(SaveFile,"Room:")
        file_text_writeln(SaveFile) //New line after writing the above
        file_text_write_string(SaveFile,string(room)) //Must convert room in to a string before writing it, because "room" is the number of thr room despite the name
        file_text_writeln(SaveFile) //Unsure why a new line is needed after last line, but error thrown if not

        //Write to file
        file_text_close(SaveFile)
    }
}