if instance_exists(obj_Player)
{
    with obj_Player
    {
        //Create the save file
        SaveFile = file_text_open_write("Inventory.sav")
        
        //Write a line of text to it
        file_text_write_string(SaveFile,"Inventory:")
        file_text_writeln(SaveFile) //New line after writing the above
        
        //Write list of weapons
        i = 0
        while i < WeaponCount
        {
            //Record we have this weapon
            file_text_write_real(SaveFile,Weapon[i].object_index) //Gets the object ID of the weapon instead of the instance ID
            file_text_writeln(SaveFile)
            i = i + 1
        }
        
        //Write to file
        file_text_close(SaveFile)
    }
}