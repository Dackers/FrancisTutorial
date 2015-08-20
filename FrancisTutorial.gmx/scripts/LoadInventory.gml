//Check that files exists (may not if never saved game before)
if file_exists("Inventory.sav") && instance_exists(obj_Player)
{
    with obj_Player
    {
        //Read the save file
        SaveFile = file_text_open_read("Inventory.sav")
        
        //Read a line from the file
        file_text_readln(SaveFile) //Just reads the first line but doesn't do anything with it because first line of save file is just the header
        
        i = 0
        
        //Read the list of weapons
        while file_text_eof(SaveFile) = false //While we haven't reached the end of the file
        {
            //Recreate the weapons we had
            WeaponType = file_text_read_real(SaveFile) //Save the object ID of the first line
            instance_create(x,y,WeaponType) //Create the object at the Player's x/y coord
            file_text_readln(SaveFile) //Read the next line
            i = i + 1
        }
    
        //Close file
        file_text_close(SaveFile)
    }
}